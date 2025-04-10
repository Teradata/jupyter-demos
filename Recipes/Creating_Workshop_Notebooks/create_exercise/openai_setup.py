import os
from openai import OpenAI

def set_openAI_key(api_key: str):
    """
    Set the OpenAI API key as an environment variable.

    Args:
        api_key (str): The OpenAI API key to be set.
    """
    os.environ['OPENAI_API_KEY'] = api_key


def get_openAI_key() -> str:
    """
    Retrieve the OpenAI API key from environment variables.

    Returns:
        str: The OpenAI API key.

    Raises:
        ValueError: If the API key is not found in environment variables.
    """
    api_key = os.environ.get("OPENAI_API_KEY")
    if not api_key:
        raise ValueError("No OpenAI API key found. Use set_openAI_key(api_key) to set it first.")
    return api_key


def call_openAI_api(content: str, model: str = "gpt-4o", temperature: float = 0, max_tokens: int = 4096) -> str:
    """
    Call the OpenAI API to generate a response from a given prompt.

    Args:
        content (str): The user input or prompt to be sent to the API.
        model (str): The OpenAI model to use. Default is 'gpt-4o'.
        temperature (float): Sampling temperature. Default is 0 for deterministic responses.
        max_tokens (int): Maximum number of tokens in the response. Default is 4096.

    Returns:
        str: The content of the response generated by the OpenAI API.

    Raises:
        ValueError: If the API key is not properly configured or if the API call fails.
    """
    api_key = get_openAI_key()
    client = OpenAI(api_key=api_key)

    try:
        chat_completion = client.chat.completions.create(
            messages=[
                {
                    "role": "user",
                    "content": content,
                }
            ],
            model=model,
            temperature=temperature,
            max_tokens=max_tokens
        )
        return chat_completion.choices[0].message.content.strip()
    except Exception as e:
        raise ValueError(f"Failed to call OpenAI API: {str(e)}")
