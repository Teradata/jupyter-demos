# -*- coding: utf-8 -*-
"""
Created on Thu Mar 24 11:02:17 2022

@author: sb255122
"""

from __future__ import print_function
import argparse
import json
import os
import pickle as pkl
import numpy as np
import pandas as pd
import xgboost as xgb
from sagemaker_containers import entry_point
from sagemaker_xgboost_container import distributed
import glob
from io import StringIO

feature_columns_names=["radius_mean",
"texture_mean",
   "perimeter_mean",        
   "area_mean",                
   "smoothness_mean" ,         
   "compactness_mean" ,        
   "concavity_mean"  ,       
   "concave_points_mean",   
  "symmetry_mean"       ,    
  "fractal_dimension_mean",   
  "radius_se"              ,  
  "texture_se"           , 
  "perimeter_se"           ,
  "area_se"             ,
  "smoothness_se"          ,
  "compactness_se"           ,
  "concavity_se"         ,
  "concave_points_se"      ,
  "symmetry_se"             ,
  "fractal_dimension_se"   ,
  "radius_worst"           ,
  "texture_worst"          ,
  "perimeter_worst"         ,
  "area_worst"               ,
  "smoothness_worst"        ,
  "compactness_worst"       ,
  "concavity_worst"        ,
  "concave_points_worst"  ,
  "symmetry_worst"        , 
  "fractal_dimension_worst" ]

label_column="diagnosis"
def _xgb_train(params, dtrain, evals, num_boost_round, model_dir, is_master):
    """Run xgb train on arguments given with rabit initialized.
    This is our rabit execution function.
    :param args_dict: Argument dictionary used to run xgb.train().
    :param is_master: True if current node is master host in distributed training,
                        or is running single node training job.
                        Note that rabit_run will include this argument.
    """
    booster = xgb.train(params=params, dtrain=dtrain, evals=evals, num_boost_round=num_boost_round)

    if is_master:
        model_location = model_dir + "/xgboost-model"
        pkl.dump(booster, open(model_location, "wb"))
        print("Stored trained model at {}".format(model_location))


def readMultipleCSV(inputPath):
    all_files = glob.glob(inputPath + "/*.csv")
    li = []
    for filename in all_files:
        df = pd.read_csv(filename)
        li.append(df)
    return pd.concat(li, axis=0, ignore_index=True)

def model_fn(model_dir):
    """Deserialize and return fitted model.
    Note that this should have the same name as the serialized model in the _xgb_train method
    """
    model_file = "xgboost-model"
    booster = pkl.load(open(os.path.join(model_dir, model_file), "rb"))
    return booster

def input_fn(input_data, content_type):
        
    if content_type == 'text/csv':
        # Read the raw input data as an in-memory string buffer,
        # convert it to a Pandas data frame.
        return pd.read_csv(StringIO(input_data), names=feature_columns_names)
    
    else:
        raise ValueError("{} not supported by script!".format(content_type))
    
        
def predict_fn(input_data, model):
    
    
    dmatrix = xgb.DMatrix(input_data)
    output = model.predict(dmatrix)
    return ','.join(['%.5f' % num for num in output])

def output_fn(prediction, content_type):
    return prediction



if __name__ == "__main__":
    parser = argparse.ArgumentParser()

    # Hyperparameters are described here.
    parser.add_argument("--max_depth",   type=int, )
    parser.add_argument("--eta", type=float)
    parser.add_argument("--gamma", type=int)
    parser.add_argument("--min_child_weight", type=int)
    parser.add_argument("--subsample", type=float)
    #parser.add_argument("--verbosity", type=int)
    parser.add_argument("--objective", type=str, default="binary:logistic")
    parser.add_argument("--num_round", type=int)
    parser.add_argument("--tree_method", type=str, default="auto")
    parser.add_argument("--predictor", type=str, default="auto")

    # Sagemaker specific arguments. Defaults are set in the environment variables.
    parser.add_argument("--output_data_dir", type=str, default=os.environ.get("SM_OUTPUT_DATA_DIR"))
    parser.add_argument("--model_dir", type=str, default=os.environ.get("SM_MODEL_DIR"))
    parser.add_argument("--train", type=str, default=os.environ.get("SM_CHANNEL_TRAIN"))
    parser.add_argument("--validation", type=str, default=os.environ.get("SM_CHANNEL_VALIDATION"))
    parser.add_argument("--sm_hosts", type=str, default=os.environ.get("SM_HOSTS"))
    parser.add_argument("--sm_current_host", type=str, default=os.environ.get("SM_CURRENT_HOST"))

    args, _ = parser.parse_known_args()

    # Get SageMaker host information from runtime environment variables
    sm_hosts = json.loads(args.sm_hosts)
    sm_current_host = args.sm_current_host

    print(args.train)
    
    print("reading data")
    
    train_df = readMultipleCSV(args.train)
    val_df = readMultipleCSV(args.validation)
    X_train= train_df.drop('diagnosis',axis=1)
    X_val= val_df.drop('diagnosis',axis=1)
    
    dtrain = xgb.DMatrix(X_train,train_df['diagnosis'])
    dval = xgb.DMatrix(X_val,val_df['diagnosis'])
    
    
   


    watchlist = (
        [(dtrain, "train"), (dval, "validation")] if dval is not None else [(dtrain, "train")]
    )

    train_hp = {
        "max_depth": args.max_depth,
        "eta": args.eta,
        "gamma": args.gamma,
        "min_child_weight": args.min_child_weight,
        "subsample": args.subsample,
        "objective": args.objective,
        "tree_method": args.tree_method,
        "predictor": args.predictor,
    }

    xgb_train_args = dict(
        params=train_hp,
        dtrain=dtrain,
        evals=watchlist,
        num_boost_round=args.num_round,
        model_dir=args.model_dir,
    )

    if len(sm_hosts) > 1:
        # Wait until all hosts are able to find each other
        entry_point._wait_hostname_resolution()

        # Execute training function after initializing rabit.
        distributed.rabit_run(
            exec_fun=_xgb_train,
            args=xgb_train_args,
            include_in_training=(dtrain is not None),
            hosts=sm_hosts,
            current_host=sm_current_host,
            update_rabit_args=True,
        )
    else:
        # If single node training, call training method directly.
        if dtrain:
            xgb_train_args["is_master"] = True
            _xgb_train(**xgb_train_args)
        else:
            raise ValueError("Training channel must have data to train model.")


   

    