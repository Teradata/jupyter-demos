import nbformat
from .utils import clean_markdowncell_for_prompts
from .openai_setup import call_openAI_api

def extract_markdown_cells(path: str) -> str:
    """
    Extract and clean all markdown cells from a Jupyter Notebook.

    Args:
        path (str): The file path to the Jupyter Notebook.

    Returns:
        str: A single concatenated string of cleaned markdown content from the notebook.
    """
    # Read the notebook file in version 4 format
    notebook = nbformat.read(path, as_version=4)
    markdown_content = []

    # Iterate through the cells in the notebook
    for cell in notebook.cells:
        if cell.cell_type == "markdown":  # Check if the cell is a markdown cell
            # Get the cell's source content

            cell_content = "".join(cell.source)
            # Clean the markdown content for prompts
            cleaned_content = clean_markdowncell_for_prompts(cell_content)
            # Append the cleaned content to the list
            markdown_content.append(cleaned_content)

    # Join all cleaned markdown content into a single string
    return "".join(markdown_content)


def prompt_summary(notebook_markdown: str) -> str:
    """
    Generate a summarization prompt for the notebook's markdown content.

    Args:
        notebook_markdown (str): The cleaned markdown content from the notebook.

    Returns:
        str: A formatted prompt string to be used with the OpenAI API.
    """
    return f"""
Your task is to summarise the content of a Jupyter Notebook in 200 words or less.
You will only get the content of the markdown cells, that describe the flow and the code, but not the code itself.
The summary will be used by another program which depends on the holistic view.
Here is the Markdown input:
{notebook_markdown}
    """


def get_notebook_summary(path: str, model: str = "gpt-4o", temperature: float = 0, max_tokens: int = 4096) -> str:
    """
    Extract markdown cells from a notebook and generate a summary using the OpenAI API.

    Args:
        path (str): The file path to the Jupyter Notebook.
        model (str): The OpenAI model to use. Default is 'gpt-4o'.
        temperature (float): Sampling temperature for the API. Default is 0 for deterministic output.
        max_tokens (int): Maximum number of tokens in the API response. Default is 4096.

    Returns:
        str: The summary of the notebook's content.
    """
    # Extract markdown content from the notebook
    notebook_md = extract_markdown_cells(path)
    # Generate the prompt for summarization
    summary_prompt = prompt_summary(notebook_md)
    # Call the OpenAI API to get the summary
    summary = call_openAI_api(content=summary_prompt, model=model, temperature=temperature, max_tokens=max_tokens)
    return summary
