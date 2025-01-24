import torch
from pandas import DataFrame
from transformers import BertForMaskedLM
import pytorch_lightning as pl
import numpy as np
from transformers import BertConfig, BertForMaskedLM, AdamW
from torch.utils.tensorboard import SummaryWriter
from pytorch_lightning.callbacks import ModelCheckpoint
import torch.optim as optim
import gc
from multiprocessing import cpu_count
import math

import json
import argparse
import mlflow
import os

NUM_WORKERS = 2











def main():








    class RcptData(torch.utils.data.Dataset):
        def __init__(self, encodings):
            super(RcptData, self).__init__()
            self.encodings = encodings

        def __getitem__(self, index):
            output_dict = {k: self.encodings[k][index]
                        for k in self.encodings.keys()}
            return output_dict

        def __len__(self):
            return len(self.encodings['input_ids'])






    class RCPTMaskingDataModule(pl.LightningDataModule):
        """
        Data module to process rcpt data
        To define a DataModule define 5 methods:
        - prepare_data (how to download(), tokenize, etc…)
        - setup (how to split, etc…)
        - train_dataloader
        - val_dataloader(s)
        - test_dataloader(s)
        """
        from typing import Optional
        from pandas import read_feather

        def __init__(
                self,
                dataset_name: str,
                batch_size: int = 256,
                split_frac: float = 0.95,
                min_seq_length: int = 3,
                pct_mask: float = 0.15,
                pct_sample: float = 1.0,
                random_masking: bool = False, 
                mask_items_cnt: int = -1
                ):
            """
            file_name - name of a file to read data from 
            batch_size - batch size for DataLoader
            split_frac - fraction of data that go
            min_seq_length - filter out element sequences of size < min_seq_length
            pct_mask - percent of data to be masked
            pct_sample - subsample input file
            random_masking - mask random items in sequence (if disabled - mask first n items)
            mask_items_cnt - number of items to mask, if -1 then number of items to mask = [pct_mask]*size of sequence
            """
            
            super().__init__()
            self.batch_size = batch_size
            self.split_frac = split_frac
            self.min_seq_length = min_seq_length
            self.pct_mask = pct_mask
            self.pct_sample = pct_sample
            self.random_masking = random_masking
            self.mask_items_cnt = mask_items_cnt

            
            from azureml.core import Workspace, Dataset
            from azureml.core.run import Run
            run = Run.get_context()
            workspace = run.experiment.workspace

            # subscription_id = '184a23a9-c9d5-4d4b-ae94-f3c58f807ad9'
            # resource_group = 'DM-DataScience'
            # workspace_name = 'MLLab'

            #workspace = Workspace.from_config()

            dataset = Dataset.get_by_name(workspace, name=dataset_name)
            
            raw_data = torch.from_numpy(dataset.to_pandas_dataframe().to_numpy(dtype=np.float32))

            if self.min_seq_length > 1:  # remove sequinces with only one element
                self.raw_data = raw_data[raw_data[:, min_seq_length+2] != 0]  # CHANGED to 5 ITEMS
            else:
                self.raw_data = raw_data

            self.vocab_size = raw_data.max().item() + 1
            # this is the percentage of items with zero values in our matrix
            with torch.no_grad():
                self.pct_of_data = 1 - \
                    ((self.raw_data == 0).sum() / self.raw_data.numel()).item()
                print(
                    f"this is the percentage of meaningful data - {self.pct_of_data:.2%}")

        def prepare_data(self):
            """
            prepare_data is called from a single process (e.g. GPU 0). Do not use it to assign state (self.x = y).
            """
            pass

        def np_shuffle_along_axis(self, filter_a,source_b,axis):
            r = np.random.rand(*source_b.shape)
            r[filter_a==101] = -1
            r[filter_a==102] = 2
            r[filter_a==0] = 3
            idx = r.argsort(axis=axis)
            return np.take_along_axis(source_b,idx,axis=axis)

        def torch_shuffle_along_axis(self, filter_a,source_b,dim):
            r = torch.rand(*source_b.shape)
            r[filter_a==101] = -1
            r[filter_a==102] = 2
            r[filter_a==0] = 3
            idx = r.argsort(dim=dim)
            return torch.take_along_dim(source_b,idx,dim=dim)

        def np_mask_ncpt(self, a, ncpt, target_mask_symbol, input_mask_symbol, hinge_padding_symbol, random_masking: bool = True, mask_items_cnt: int = -1):
            # generate indices of source matrix [0..N] x M rows
            idx = np.indices(a.shape)[1] 
            # reshuffle this indices with respect to receipt boundaries (101 .. 102)
            idx_sh = self.np_shuffle_along_axis(a, idx, axis=1) if random_masking else idx
            # calc max index to mask (considering receipt len)
            max_ids = mask_items_cnt if mask_items_cnt>0 else np.ceil(np.count_nonzero(a>=1000, axis=1, keepdims=True)*ncpt) 
            # mask only n percent of all items (no special symbols)
            mask_filter = (idx_sh <= max_ids) & (a>=1000) 
            # calc output
            # general target (only masked items on their source positions)
            masked_target = np.where(mask_filter, a, target_mask_symbol) 
            # hinge target (only masked items sequential, followed by padding symbol)
            hinge_hidden_items = np.where(mask_filter, a, hinge_padding_symbol)
            hinge_target = -np.sort(-hinge_hidden_items, axis=1)
            # masked input (source items except masked)
            masked_input = np.where(~mask_filter, a, input_mask_symbol)
            attention_mask = (a>0).astype(np.int8)
            return {'mask_map': mask_filter, 'targets': masked_target, 'hinge_target': hinge_target, 'input_ids': masked_input, 'attention_mask': attention_mask}

        def torch_mask_ncpt(self, a, ncpt, target_mask_symbol, input_mask_symbol, hinge_padding_symbol, random_masking: bool = True, mask_items_cnt: int = -1):
            # generate indices of source matrix [0..N] x M rows
            idx = torch.nonzero(torch.ones(a.shape),as_tuple=True)[1].reshape(a.shape)
            # reshuffle this indices with respect to receipt boundaries (101 .. 102)
            idx_sh = self.torch_shuffle_along_axis(a, idx, dim=1) if random_masking else idx 
            # calc max index to mask (considering receipt len)
            max_ids = mask_items_cnt if mask_items_cnt>0 else torch.ceil(torch.count_nonzero(a>=1000, dim=1)*ncpt).unsqueeze(1) 
            # mask only n percent of all items (no special symbols)
            mask_filter = (idx_sh <= max_ids) & (a>=1000) 
            # calc output
            # general target (only masked items on their source positions)
            masked_target = torch.where(mask_filter, a, torch.tensor(target_mask_symbol, dtype=a.dtype)) 
            # hinge target (only masked items sequential, followed by padding symbol)
            hinge_hidden_items = torch.where(mask_filter, a, torch.tensor(hinge_padding_symbol, dtype=a.dtype))
            hinge_sorted, hinge_indices = torch.sort(-hinge_hidden_items, dim=1)
            hinge_target = -hinge_sorted
            # masked input (source items except masked)
            masked_input = torch.where(~mask_filter, a, torch.tensor(input_mask_symbol, dtype=a.dtype))
            attention_mask = (a>0).to(torch.int8)
            return {'mask_map': mask_filter, 'targets': masked_target, 'input_ids': masked_input,'attention_mask': attention_mask, 'hinge_target': hinge_target}

        def setup(self, stage: Optional[str] = None):
            """
            Mask the data and make a split for train and val
            Creates:
            dict encodings = {'input_ids', 'attention_mask', 'targets'}
            where input_ids is masked self.raw_data, attention_mask is attention mask, targets is original data
            Notes:
            code relies that:
            [CLS] code is 101, 
            [SEP] code is 102
            [MASK] code is 103
            [PAD] code is 0
            Your data shoud follow these conventions
            ---
            Note: to re-run setup set dm._has_setup_fit = False and launch setup 
            """
            if stage in ('fit', None):
                with torch.no_grad():

                    # reshuffle and optionally sample
                    rows = len(self.raw_data)
                    split_idx = int(self.pct_sample*rows)
                    indices = torch.randperm(len(self.raw_data))[:split_idx]
                    raw_data_smp = self.raw_data[indices]
                    gc.collect()

                    raw_data_buff = raw_data_smp.clone().detach().to(torch.int32)

                    # shuffle along receipt items
                    raw_data_buff_sh = self.torch_shuffle_along_axis(raw_data_buff,raw_data_buff,dim=1)

                    # random mask self.pct_mask tokens
                    masked_data = self.torch_mask_ncpt(raw_data_buff_sh, self.pct_mask, -100, 103, -1, random_masking=self.random_masking, mask_items_cnt=self.mask_items_cnt)

                    self.encodings = {'input_ids': masked_data['input_ids'].clone().detach().to(torch.int),
                                'attention_mask': masked_data['attention_mask'].to(torch.int),
                                'targets': masked_data['targets'].clone().detach().to(torch.long),
                                'hinge_target': masked_data['hinge_target'].clone().detach().to(torch.long)}

                    # train/val split index
                    self.split_idx = int(len(self.encodings['input_ids']) * self.split_frac)

        def train_dataloader(self):
            return torch.utils.data.DataLoader(RcptData({k: v[:self.split_idx] for k, v in self.encodings.items()}),
                                            batch_size=self.batch_size, shuffle=True, num_workers=NUM_WORKERS)

        def val_dataloader(self):
            return torch.utils.data.DataLoader(RcptData({k: v[self.split_idx:] for k, v in self.encodings.items()}),
    #                                          batch_size=self.batch_size, shuffle=False, num_workers=NUM_WORKERS)
                                                batch_size=1, shuffle=False, num_workers=NUM_WORKERS)

        def teardown(self, stage: Optional[str] = None):
            # Used to clean-up when the run is finished
            gc.collect()
            pass









    class CosineWarmupScheduler(optim.lr_scheduler._LRScheduler):
        '''
        optimizer = optim.Adam(net.parameters(), lr=1e-3)
        lr_scheduler = CosineWarmupScheduler(optimizer=optimizer, warmup=100, max_iters=2000)
        In the first 100 iterations, we increase the learning rate factor from 0 to 1, whereas for all later iterations, we decay it using the cosine wave. 
        Pre-implementations of this scheduler can be found in Transformer library by huggingface
        https://huggingface.co/transformers/main_classes/optimizer_schedules.html?highlight=cosine#transformers.get_cosine_schedule_with_warmup
        '''

        def __init__(self, optimizer, warmup, max_iters):
            self.warmup = warmup
            self.max_num_iters = max_iters
            super().__init__(optimizer)

        def get_lr(self):
            lr_factor = self.get_lr_factor(epoch=self.last_epoch)
            return [base_lr * lr_factor for base_lr in self.base_lrs]

        def get_lr_factor(self, epoch):
            import numpy as np
            lr_factor = 0.5 * (1 + np.cos(np.pi * epoch / self.max_num_iters))
            if epoch <= self.warmup:
                lr_factor *= epoch * 1.0 / self.warmup
            return lr_factor

    class PolyWarmUpScheduler(optim.lr_scheduler._LRScheduler):
        """
        taken from https://github.com/NVIDIA/DeepLearningExamples/blob/master/PyTorch/LanguageModeling/BERT/schedulers.py
        """

        def __init__(self, optimizer, warmup, total_steps, degree=0.5, last_epoch=-1):
            self.warmup = warmup
            self.total_steps = total_steps
            self.degree = degree
            super(PolyWarmUpScheduler, self).__init__(optimizer, last_epoch)

        def get_lr(self):
            progress = self.last_epoch / self.total_steps
            if progress < self.warmup:
                return [base_lr * progress / self.warmup for base_lr in self.base_lrs]
            else:
                return [base_lr * ((1.0 - progress) ** self.degree) for base_lr in self.base_lrs]

    class LognormalWarmUpScheduler(optim.lr_scheduler._LRScheduler):
        """
        new lognormal scheduler with warmup
        """

        def __init__(self, optimizer, warmup, total_steps, degree=0.001, last_epoch=-1):
            self.warmup = warmup
            self.total_steps = total_steps
            self.sigma = -(math.log(1/self.warmup))**2 / math.log(degree)
            super(LognormalWarmUpScheduler, self).__init__(optimizer, last_epoch)

        def get_lr(self):
            max_point = self.warmup*self.total_steps
            wave_k = (math.sin(2*math.pi*self.last_epoch/max_point)+1)/2
            lognorm = (math.exp(-(math.log(self.last_epoch) - math.log(max_point))**2 / self.sigma)) if self.last_epoch > 0 else 0
            return [base_lr * wave_k * lognorm for base_lr in self.base_lrs]


    class RcptBERTMLM(pl.LightningModule):
        '''
        This is our main class for training a BERT MLM for receipts
        '''

        def __init__(self, BERTconfig, lr=1e-4, warmup_proportion=0.2, max_iters=10000, opt='AdamW', mask_mode='dynamic', static_masking_first_n=2, loss_func="hinge"):
            '''
            accept bert config as a parameter
            and
            - lr (learninig rate), 
            - warmup (number of iterations/batches to increase LR from 0 to 1),  
            - max_iters (number of iterations/batches (not epochs) for cosine anealling of LR)
            - opt - optimizer name 'AdamW' or 'FusedLAMB'
            - mask_mode - 'dynamic' (random hidden items) or 'static' (first n hidden items, n = static_masking_first_n)
            - static_masking_first_n - number of first elements hidden from the model (default 2) in static masking mode
            - loss_func - softmargin or hinge, all other values treat as classic cross entropy
            '''
            super().__init__()
            self.model = BertForMaskedLM(BERTconfig)
            self.save_hyperparameters("lr", "warmup_proportion", "max_iters", "opt", "mask_mode", "static_masking_first_n", "loss_func")
            self.loss = torch.nn.MultiLabelMarginLoss()
            self.loss_soft = torch.nn.MultiLabelSoftMarginLoss()

        def forward(self, x):
         return self.model.forward(input_ids=x['input_ids'], attention_mask=x['attention_mask'], labels=x['targets'])

        def configure_optimizers(self):
            param_optimizer = list(self.model.named_parameters())
            no_decay = ['bias', 'gamma', 'beta', 'LayerNorm']

            optimizer_grouped_parameters = [
                {'params': [p for n, p in param_optimizer if not any(
                    nd in n for nd in no_decay)], 'weight_decay': 0.01},
                {'params': [p for n, p in param_optimizer if any(nd in n for nd in no_decay)], 'weight_decay': 0.0}]

            if self.hparams.opt=='FusedLAMB':
                optimizer = FusedLAMB(optimizer_grouped_parameters,lr=self.hparams.lr)
            
            if self.hparams.opt=='AdamW':
                optimizer = AdamW(optimizer_grouped_parameters,lr=self.hparams.lr)

            self.lr_scheduler = PolyWarmUpScheduler(optimizer,
                                            warmup=self.hparams.warmup_proportion,
                                            total_steps=self.hparams.max_iters)
            return optimizer

        def optimizer_step(self, *args, **kwargs):
            super().optimizer_step(*args, **kwargs)
            self.lr_scheduler.step()  # Step per iteration

        def hinge_loss(self, out, batch):
            """
            calculate hinge loss - prepare data and make a call to loss function
            out - result from forward pass from BERT
            batch - initial data passed into BERT model
            Returns loss calculated by MultiLabelMarginLoss
            """
            hinge_target_pad = torch.nn.functional.pad(batch['hinge_target'], pad=(0, self.model.config.vocab_size - batch['hinge_target'].shape[-1]), mode='constant', value=-1)
            
            if self.hparams.mask_mode == 'dynamic':
                logits = out.logits.clone()
                logits[~(batch['targets']>0)] = 0 
                mlm_logits = logits.sum(dim=1) / (batch['targets']>0).count_nonzero(dim=1).unsqueeze(0).T

            if self.hparams.mask_mode == 'dynamic_mean':
                mlm_logits = out.logits.mean(dim=1)
            
            if self.hparams.mask_mode == 'static':
                mlm_logits = out.logits[:,1:self.hparams.static_masking_first_n+1,:].sum(dim=1) / self.hparams.static_masking_first_n

            hinge_loss = self.loss(mlm_logits, hinge_target_pad)

            return hinge_loss

        def softmargin_loss(self, out, batch):
            """
            Sama as hinge loss but for MultiLabelSoftMarginLoss
            Returns loss calculated by MultiLabelSoftMarginLoss
            """
            # replace hinge target minus ones with zeroes
            hinge_target_zeroes = torch.where(batch['hinge_target']>0, 
                                        batch['hinge_target'], 
                                        batch['hinge_target'].new_zeros(1)
                                        )
            # make one-hot encoding from targets -> (512, 32, 5063) batch x seq_len x vocab_size
            onehot_singlelabel_target = torch.nn.functional.one_hot(hinge_target_zeroes, num_classes=self.model.config.vocab_size)
            # make multi label one hot encoding -> 512, 5036
            onehot_multilabel_target = (onehot_singlelabel_target.sum(dim=1)>0).to(torch.long)
            # zero out 1st position
            onehot_multilabel_target[:,0] = 0
            
            if self.hparams.mask_mode == 'dynamic':
                logits = out.logits.clone()
                logits[~(batch['targets']>0)] = 0 
                mlm_logits = logits.sum(dim=1) / (batch['targets']>0).count_nonzero(dim=1).unsqueeze(0).T

            if self.hparams.mask_mode == 'dynamic_mean':
                mlm_logits = out.logits.mean(dim=1)
            
            if self.hparams.mask_mode == 'static':
                mlm_logits = out.logits[:,1:self.hparams.static_masking_first_n+1,:].sum(dim=1) / self.hparams.static_masking_first_n

            return self.loss_soft(mlm_logits, onehot_multilabel_target)

        def training_step(self, batch, batch_idx):
            """
            return a loss given a batch
            """
            out = self.forward(batch)

            if self.hparams.loss_func == "hinge": 
                loss_val = self.hinge_loss(out, batch) 
            elif self.hparams.loss_func == "softmargin":
                loss_val = self.softmargin_loss(out, batch) 
            else:
                loss_val = out.loss
            
            mlflow.log_metric('loss', loss_val.item())
            mlflow.log_metric('lr', self.lr_scheduler.get_last_lr()[0])
            

            self.log('loss', loss_val.item(), prog_bar=True, logger=True)
            self.log('lr', self.lr_scheduler.get_last_lr()[0],  prog_bar=True, logger=True)

            return {'loss': loss_val}

        def validation_step(self, batch, batch_idx):
            """
            calc metrics on validation dataset
            """
            with torch.no_grad():
                out = self.forward(batch)
                if self.hparams.loss_func == "hinge": 
                    loss_val = self.hinge_loss(out, batch) 
                elif self.hparams.loss_func == "softmargin":
                    loss_val = self.softmargin_loss(out, batch) 
                else:
                    loss_val = out.loss
                mlflow.log_metric('val_loss', loss_val.item())
                self.log('val_loss', loss_val.item(), prog_bar=True, logger=True)

                
                # val accuracy calculation
                if self.hparams.mask_mode == 'dynamic':
                    logits = out.logits.clone()
                    logits[~(batch['targets']>0)] = 0 
                    mlm_logits = logits.sum(dim=1) / (batch['targets']>0).count_nonzero(dim=1).unsqueeze(0).T # average logits within one receipt
                    _,cls_pred = torch.topk(mlm_logits,k=5)

                if self.hparams.mask_mode == 'dynamic_mean':
                    mlm_logits = out.logits.mean(dim=1)
                    _,cls_pred = torch.topk(mlm_logits,k=5)
                
                if self.hparams.mask_mode == 'static':
                    mlm_logits = out.logits[:,1:self.hparams.static_masking_first_n+1,:].sum(dim=1) / self.hparams.static_masking_first_n
                    _,cls_pred = torch.topk(mlm_logits,k=self.hparams.static_masking_first_n*2)

                # extract topk multilabel predictions (one hot form)
                onehot_singlelabel_pred = torch.nn.functional.one_hot(cls_pred, num_classes=self.model.config.vocab_size)
                onehot_multilabel_pred = onehot_singlelabel_pred.sum(dim=1)>0

                # extract multilabel target (one hot form)
                hinge_target_zeroes = torch.where(batch['hinge_target']>0, batch['hinge_target'], torch.tensor(0, dtype=batch['hinge_target'].dtype, device=batch['hinge_target'].device))
                onehot_singlelabel_target = torch.nn.functional.one_hot(hinge_target_zeroes, num_classes=self.model.config.vocab_size)
                onehot_multilabel_target = onehot_singlelabel_target.sum(dim=1)>0

                # compare target vs prediction, at least one match wouble be fine
                res = (onehot_multilabel_pred & onehot_multilabel_target).any(dim=1)
                mlflow.log_metric('val_acc', res.sum()/res.shape[0])
                self.log('val_acc', res.sum()/res.shape[0], prog_bar=True, logger=True)

            return out.logits












    print("Torch version:", torch.__version__)

    # get command-line arguments
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--split_frac", type=float, default=0.97, help="split fraction"
    )
    parser.add_argument(
        "--batch_size", type=int, default=16, help="batch size"
    )
    parser.add_argument(
        "--accum_grad_batches", type=int, default=8, help="accum grad batches"
    )
    parser.add_argument(
        "--max_iters", type=int, default=100, help="how many iterations until full exhaust of LR scheduler"
    )


    parser.add_argument("--input_ds", type=str, help="input dataset name")
    parser.add_argument("--output_dir", type=str, help="output directory")
    args = parser.parse_args()

    # Start Run
    mlflow.start_run()

    SPLIT_FRAC = args.split_frac
    # batch size
    BATCH_SIZE = args.batch_size

    rcpt_dm = RCPTMaskingDataModule(dataset_name=args.input_ds, batch_size=BATCH_SIZE, split_frac=SPLIT_FRAC, min_seq_length=3, pct_mask  = -1, pct_sample = 0.7, random_masking = True, mask_items_cnt = 1)

    rcpt_dm.setup('fit')

    ACCUM_GRAD_BATCHES = args.accum_grad_batches

    # effective batch size for one optimizer step
    full_batch_size = BATCH_SIZE*ACCUM_GRAD_BATCHES

    print("full_batch_size: " + str(full_batch_size))

    # number of optimizer steps per epoch, number of LR iterations per epoch
    iters_per_epoch = rcpt_dm.encodings['input_ids'].shape[0]/full_batch_size

    print("iters_per_epoch: " + str(iters_per_epoch))

    # how many iterations until full exhaust of LR scheduler
    MAX_ITERS = args.max_iters

    print("MAX_ITERS: " + str(MAX_ITERS))

    # this is the number of epochs that leads to LR exhaust
    MAX_EPOCHS = int(MAX_ITERS/iters_per_epoch)
    print("MAX_EPOCHS: " + str(MAX_EPOCHS))

    
    config = BertConfig(
        vocab_size=rcpt_dm.encodings['input_ids'].max().item() + 1, # 5309, #
        max_position_embeddings=rcpt_dm.encodings['input_ids'].shape[1],
        intermediate_size=384,
        hidden_size=120,
        num_attention_heads=3,
        num_hidden_layers=3,
        type_vocab_size=2,
        pad_token_id=0
    )
    hparams = {'lr': 1e-4, 
            'max_iters': MAX_ITERS,
            'warmup_proportion': 0.01, 
            'opt': 'AdamW', 'mask_mode': 'static', 'static_masking_first_n': 1, 'loss_func': 'softmargin'}

    bert_mlm = RcptBERTMLM(config, **hparams)

    for k in bert_mlm.hparams.keys():
        bert_mlm.hparams[k] = hparams[k]
    
    torch.backends.cudnn.enabled = True

    checkpoint_callback = ModelCheckpoint(monitor="val_loss", dirpath=r'checkpoints',filename='p1m_s5_dyn025_softmargin_lamb_hlr1e2_b3072x2_ce_{epoch}_{step}_{val_loss:.3f}-{val_acc:.3f}')

    trainer = pl.Trainer(accelerator="cpu", devices=1,
                      max_epochs=MAX_EPOCHS,
                      log_every_n_steps=1, 
                      val_check_interval=0.1,
                      num_sanity_val_steps=1, 
                      callbacks=[checkpoint_callback], 
                      #flush_logs_every_n_steps = 1,
                      accumulate_grad_batches=ACCUM_GRAD_BATCHES, 
                      precision=32)
    
    torch.distributions.Distribution.set_default_validate_args(True)

    trainer.fit(bert_mlm, rcpt_dm)

    checkpoint_filename = os.path.join(args.output_dir, "example.ckpt")
    
    trainer.save_checkpoint(checkpoint_filename)

    class RcptBERTMLM_EXPORT(pl.LightningModule):
        '''
        This is our main class for training a BERT MLM for receipts
        '''

        def __init__(self, BERTconfig, lr=1e-4, warmup_proportion=0.2, max_iters=10000, opt='AdamW', mask_mode='dynamic', static_masking_first_n=2, loss_func="hinge"):
            '''
            accept bert config as a parameter
            and
            - lr (learninig rate), 
            - warmup (number of iterations/batches to increase LR from 0 to 1),  
            - max_iters (number of iterations/batches (not epochs) for cosine anealling of LR)
            - opt - optimizer name 'AdamW' or 'FusedLAMB'
            - mask_mode - 'dynamic' (random hidden items) or 'static' (first n hidden items, n = static_masking_first_n)
            - static_masking_first_n - number of first elements hidden from the model (default 2) in static masking mode
            - loss_func - softmargin or hinge, all other values treat as classic cross entropy
            '''
            super().__init__()
            self.model = BertForMaskedLM(BERTconfig)
            self.save_hyperparameters("lr", "warmup_proportion", "max_iters", "opt", "mask_mode", "static_masking_first_n", "loss_func")
            self.loss = torch.nn.MultiLabelMarginLoss()
            self.loss_soft = torch.nn.MultiLabelSoftMarginLoss()

        def forward(self, x):
    #       y = self.model.forward(input_ids=x['input_ids'], attention_mask=x['attention_mask'], labels=x['targets']).logits
            y = self.model(input_ids=x).logits
            return torch.reshape(torch.topk(torch.nn.functional.softmax(y[0][1])[1000:], 30).indices + 1000, [30])


    bert_mlm = RcptBERTMLM_EXPORT(config, **hparams)

    model_loaded = bert_mlm.load_from_checkpoint(checkpoint_filename, BERTconfig = config)
    model_loaded.train(False)

    

    os.makedirs(args.output_dir, exist_ok=True)

    with torch.no_grad():
        torch.onnx.export(model_loaded,                     # model being run
                        ##since model is in the cuda mode, input also need to be
                        torch.tensor([[103,14527,23350,13331,31230,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]],dtype=torch.int32),              # model input (or a tuple for multiple inputs)
                        os.path.join(args.output_dir, "model.onnx"), # where to save the model (can be a file or file-like object)
                        export_params=True,        # store the trained parameter weights inside the model file
                        opset_version=15,          # the ONNX version to export the model to
                        do_constant_folding=False,  # whether to execute constant folding for optimization
                        input_names = ['input'],
                        output_names = ['output'],
                        keep_initializers_as_inputs = False

                        )

    mlflow.end_run()


if __name__ == "__main__":
    main()


