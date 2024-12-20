import re

def clean_markdowncell_for_prompts(markdown_cell_source: str) -> str:
    """
    Clean a markdown cell's source content for use in prompts.

    Args:
        markdown_cell_source (str): The raw content of a markdown cell.

    Returns:
        str: The cleaned markdown content with HTML tags and base64-encoded images removed.
    """
    # Remove HTML tags
    cleaned = re.sub(r'<[^>]+>', '', markdown_cell_source)
    # Remove base64-encoded images
    cleaned = re.sub(r'data:image/[^;]+;base64,[^\s]+', '', cleaned)
    return cleaned
