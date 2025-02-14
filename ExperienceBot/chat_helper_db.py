import os
import json
import re

import openai
from langchain.document_loaders import DirectoryLoader
from langchain_openai import OpenAIEmbeddings
from langchain.vectorstores import FAISS
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain.schema import Document

from langchain_community.document_loaders import NotebookLoader
from langchain_community.document_loaders import DirectoryLoader


# ----------------------------------------------------------------
# Function to extract content from a Jupyter notebook
def extract_notebook_content(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        notebook_data = json.load(f)

    content = ""
    for cell in notebook_data.get("cells", []):
        if cell["cell_type"] == "markdown":
            # Clean markdown content by removing HTML tags
            content += "\n".join(cell["source"]) + "\n\n"
        elif cell["cell_type"] == "code":
            # Format code properly
            content += "```python\n" + "".join(cell["source"]) + "\n```\n\n"
    return content


# Function to remove HTML tags
def remove_html_tags(text):
    """Remove HTML tags from a string"""
    clean = re.compile("<.*?>")
    return re.sub(clean, "", text)


# Function to split the notebook content into markdown and code
def split_ipynb_content(content):
    # Regular expression to match code blocks
    code_pattern = re.compile(r"```python(.*?)```", re.DOTALL)

    # Find all code blocks
    code_blocks = code_pattern.findall(content)

    # Split the content by code blocks
    parts = code_pattern.split(content)

    # Combine markdown and code blocks
    result = []
    for i, part in enumerate(parts):
        if i % 2 == 0:
            # This is a markdown part, remove HTML tags
            clean_part = remove_html_tags(part)
            result.append(("markdown", clean_part))
        else:
            # This is a code part
            result.append(("code", part))

    return result


# Function to clean and split notebook content
def clean_and_split_notebook_content(file_path):
    """Extract markdown content and clean up the notebook's information."""
    # Extract the content from the notebook file
    content = extract_notebook_content(file_path)

    # Split content into markdown and code cells
    split_content = split_ipynb_content(content)

    # Initialize a list to hold combined documents
    combined_documents = []
    current_markdown = ""
    current_code = ""

    # Iterate through the split content to group markdown with code
    for part_type, part in split_content:
        if part_type == "markdown":
            # If we have code and markdown, combine them
            if current_markdown or current_code:
                combined_documents.append(
                    {"markdown": current_markdown, "code": current_code}
                )
            # Update current markdown to the new one
            current_markdown = part
            current_code = ""  # Reset code, ready for next code block
        elif part_type == "code":
            # Append the code to the current code block
            current_code += part

    # Add the last document (markdown + code)
    if current_markdown or current_code:
        combined_documents.append({"markdown": current_markdown, "code": current_code})

    return combined_documents


def remove_extra_notebooks(notebooks):
    print("No of notebooks before deleting the ReleaseNotes.ipynb: ", len(notebooks))

    # Find the index of 'ReleaseNotes.ipynb'
    index_to_remove = next(
        (
            index
            for (index, d) in enumerate(notebooks)
            if "ReleaseNotes.ipynb" in d.metadata["source"]
        ),
        None,
    )
    print("Index of ReleaseNotes.ipynb : ", index_to_remove)

    # Remove the element if found
    if index_to_remove is not None:
        del notebooks[index_to_remove]

    print("No of notebooks post deleting the ReleaseNotes.ipynb: ", len(notebooks))
    return notebooks


def generate_emb():
    # Load notebooks and clean them
    path = "/home/jovyan/JupyterLabRoot/"
    loader = DirectoryLoader(path, glob="**/*.ipynb", loader_cls=NotebookLoader)
    notebooks = loader.load()

    # remove ReleaseNotes.ipynb
    notebooks = remove_extra_notebooks(notebooks)

    # Clean each notebook before processing it
    cleaned_documents = []
    for notebook in notebooks:
        # Assuming notebook metadata contains file path
        file_path = notebook.metadata.get("source", "Unknown")  # Adjust this as needed
        # print("file_path : ", file_path)
        cleaned_data = clean_and_split_notebook_content(file_path)

        # Convert cleaned data to documents, including the source file path
        for data in cleaned_data:
            if data["markdown"] or data["code"]:
                doc = Document(
                    page_content=f"Markdown:\n{data['markdown']} \n\nCode:\n{data['code']}",
                    metadata={
                        "source": file_path
                    },  # Ensure the source file path is added
                )
                cleaned_documents.append(doc)

    # Split text into manageable chunks
    text_splitter = RecursiveCharacterTextSplitter(chunk_size=1000, chunk_overlap=100)
    docs = text_splitter.split_documents(cleaned_documents)

    # for count of token
    from tiktoken import encoding_for_model

    def count_document_tokens(document, model_name="gpt-4o-mini"):
        encoder = encoding_for_model(model_name)
        return len(encoder.encode(document.page_content))

    tiktokn = 0
    for doc in cleaned_documents:
        tiktokn = tiktokn + count_document_tokens(doc)

    print("total token from all the notebooks: ", tiktokn)

    # Create vector store using embeddings
    embeddings = OpenAIEmbeddings(model="text-embedding-3-large")
    vector_store = FAISS.from_documents(docs, embeddings)

    # Save the index for reuse
    vector_store.save_local("notebooks_index")
    return vector_store

def load_emb():
    # Load the FAISS index with dangerous deserialization enabled
    # Create vector store using embeddings
    embeddings = OpenAIEmbeddings(model="text-embedding-3-large") 

    return FAISS.load_local(
        "notebooks_index", embeddings, allow_dangerous_deserialization=True
    )

# ----------------------------------------------------------------


def extract_answer_code_references(input_string):

    # Extract references and create JupyterLab-compatible links
    references = re.findall(r"(/home/[^\s]+)", input_string)
    html_output = []
    for i, ref in enumerate(references):
        html_output.append(f'<i> {i+1}. {ref.split("/")[-1]} </i>')

    # return html_output
    return "\n\n".join(html_output)


# ----------------------------------------------------------------
