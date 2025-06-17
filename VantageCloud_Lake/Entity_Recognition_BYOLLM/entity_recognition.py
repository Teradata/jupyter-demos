
#!/usr/bin/env python3
import sys
import warnings

warnings.simplefilter('ignore')
input_str = sys.stdin.read()

DELIMITER = '#'

if len(input_str) > 0:
    from transformers import AutoTokenizer, AutoModelForTokenClassification, pipeline
    torch_device = 'cuda'
    model_path = "./models/roberta-large-ontonotes5"
    tokenizer = AutoTokenizer.from_pretrained(model_path)
    model = AutoModelForTokenClassification.from_pretrained(model_path)
    translator = pipeline("token-classification", model=model, tokenizer=tokenizer, device=torch_device, aggregation_strategy='max')

    for line in input_str.splitlines():
        results = translator(line)
        dict_val = {}

        for r in results:
            entity = r['entity_group']
            word = r['word']
            dict_val.setdefault(entity, []).append(word)

        combined_str = ""
        for key in ["ORG", "PERSON", "DATE", "PRODUCT", "GPE"]:
            combined_str += f"{DELIMITER}{','.join(dict_val.get(key, []))}"

        print(f"{line}{combined_str}")
