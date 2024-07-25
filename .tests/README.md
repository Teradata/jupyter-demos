# ClearScape Analytics™ Playwright Testing

This guide assists notebook developers in providing testing inputs for the prompts in the Jupyter notebook. For notebooks that require more inputs than the DBPassword, users can provide a file to facilitate the Playwright CI process. This file should have the same filename as the notebook and end with the extension `.yaml` and also the filename should start with `.` to make it hidden file. It should reside in the same directory as the notebook. If the notebook does not require this file, there's no need to create one.

The configuration file is a simple set of key-value pairs in yaml format

```
inputs:
  - type: env
    value: 'CSAE_OPENAPI_KEY'
    cell: 12
  - type: env
    value: 'CSAE_ENV_PASSWORD'
    cell: 14
  - type: text
    value: 'What is the average income for Phoenix?'
    prompt: 'We invite you to enter your natural language query:'
```
## Description 
| Field  | Description |
| ---- | --- |
| type | There 2 type of inputs as of now `env` and the `text`. `text` will simply substiture the same value where as for `env` value is fetched from the secrets.|
| value | string value in case of type `text`. secrect key in case of type `env`. |
| cell | cell number of the cell where the this input should be filled. |
| prompt | can specify the input lable in the notebook |
| nextAction | key that should be simulated as pressed after filling in the input. |

Note: Can use the cell or prompt from selecting the input, When both cell and prompt matches an input the the prompt will take priority.

## Secrets
| Secret env  | value |
| ----------------- | ----- |
| CSAE_ENV_PASSWORD   | Vantage DB password for the environment |
| CSAE_OPENAPI_KEY | OpenAI API Key for GenAI |