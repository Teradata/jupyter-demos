# ClearScape Analytics™ Playwright Testing

This guide assists notebook developers in providing testing inputs for the prompts in the Jupyter notebook. For notebooks that require more inputs than the DBPassword, users can provide a file to facilitate the Playwright CI process. This file should have the same filename as the notebook and end with the extension `.testdata`. It should reside in the same directory as the notebook. If the notebook does not require this file, there's no need to create one.

The notebook is a simple set of key-value pairs, each on a new line. The key is the notebook cell number, and the value is the input you want to provide.

```
09 some input
12 http://someinput.com
32 $DBPassword
```

There are special keywords for values that are replaced with secret values at the time of CI execution. These keys start with `$`, like `$DBPassword` in the example above.

| Special keywords  | value |
| ----------------- | ----- |
| $DBPassword   | Vantage DB password for the environment |
| $OpenAIAPIKey | OpenAI API Key for GenAI |