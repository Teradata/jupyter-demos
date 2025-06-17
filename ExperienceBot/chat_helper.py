import os
import re
import requests

# geiAI
from langchain_openai import OpenAIEmbeddings
from langchain.vectorstores import FAISS
from langchain_openai import ChatOpenAI
from langchain.prompts import PromptTemplate
from langchain.chains import RetrievalQA


# ----------------------------------------------------------------
#  Step1: Download the embeddings from google bucket
# ----------------------------------------------------------------
def get_request_and_save(url, destination_folder, filename):
    try:
        response = requests.get(url)
        response.raise_for_status()  # Raise an exception for HTTP errors

        # Ensure the destination folder exists
        if not os.path.exists(destination_folder):
            os.makedirs(destination_folder)

        # Save the response to a file
        file_path = os.path.join(destination_folder, filename)
        with open(file_path, "wb") as file:  # Use 'wb' to write in binary mode
            file.write(response.content)

        print(f"Response saved to {file_path}")
    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")


def download_embedding():
    print("downloading the embeddings")
    url = "https://storage.googleapis.com/clearscape_analytics_demo_data/DEMO_Logo/vectorstore_index/notebooks_index/"
    destination_folder = "notebooks_index"
    # filename = 'response.txt'
    files = ["index.faiss", "index.pkl"]
    for filename in files:
        file_url = url + filename
        print("url:", file_url)
        get_request_and_save(file_url, destination_folder, filename)


download_embedding()

# ----------------------------------------------------------------
#  Step2: Load the embeddings from local directory
# ----------------------------------------------------------------


def load_emb():
    # Load the FAISS index with dangerous deserialization enabled
    # Create vector store using embeddings
    embeddings = OpenAIEmbeddings(model="text-embedding-3-large")

    return FAISS.load_local(
        "notebooks_index", embeddings, allow_dangerous_deserialization=True
    )


# ----------------------------------------------------------------
#  Step3: Define the RAG
# ----------------------------------------------------------------
def get_qa_chain():
    # Custom Prompt Template
    CUSTOM_PROMPT = """
    You are a helpful assistant. Use the following retrieved information from Jupyter notebooks to provide:
    1. A **clean and concise textual explanation** based on the question and notebook markdown.
    2. **Relevant Clean Python code** extracted from the notebooks' code cells that are related to the question. Please filter the code that is related to the query.
    3. Extract the source documents
    If no relevant information is found, politely say so.

    *Critical*: start by greeting only if user starts with greeting, just say, "Hey there! 😊 Welcome to our chatbot!"

    Context:
    {context}

    Question:
    {question}

    Your response should be in below format:
    ##Answer:
    ##Relevant Code:
    ##Source documents:
    """

    prompt = PromptTemplate(
        input_variables=["context", "question"], template=CUSTOM_PROMPT
    )

    # Make sure to use a Chat model like 'gpt-4' or 'gpt-3.5-turbo'
    chat_model = ChatOpenAI(model="gpt-4o-mini")

    # Retrieval QA Chain
    return RetrievalQA.from_chain_type(
        llm=chat_model,
        retriever=load_emb().as_retriever(
            search_type="mmr", search_kwargs={"k": 10}
        ),  # Assuming vector_store is your vector database
        return_source_documents=True,
        chain_type_kwargs={"prompt": prompt},
    )


# get QA chain object
qa_chain = get_qa_chain()


# Function to Query Chatbot
def query_chatbot(question):
    # Query the chatbot using the chain
    result = qa_chain.invoke(question)
    answer = result["result"]

    # Extract and format relevant source paths from source documents
    source_docs = result.get("source_documents", [])
    sources = "\n".join(
        set([doc.metadata.get("source", "Unknown") for doc in source_docs])
    )

    return f"""
    {answer}

    Reference Notebook(s):
    {sources if sources else "No source notebooks found."}
    """


def extract_answer_code_references(input_string):

    # Extract references and create JupyterLab-compatible links
    references = re.findall(r"(/home/[^\s]+)", input_string)
    html_output = []
    for i, ref in enumerate(references):
        html_output.append(f'<i> {i+1}. {ref.split("/")[-1]} </i>')

    # return html_output
    return "\n\n".join(html_output)


# ----------------------------------------------------------------
#  Step4: Get the chat UI
# ----------------------------------------------------------------
def get_chat_ui():
    import panel as pn
    pn.extension(design="material")

    # panel callback function
    def callback(contents, user, instance):
        response = qa_chain.invoke(contents)
        result = response["result"]

        source_docs = response.get("source_documents", [])
        sources = "\n".join(
            set([doc.metadata.get("source", "Unknown") for doc in source_docs])
        )
        html_output = extract_answer_code_references(sources)
        result = result + "\n\n" + html_output
        return result

    return pn.chat.ChatInterface(
        callback=callback,
        show_rerun=False,
        show_undo=False,
        show_clear=False,
        width=1200,
        height=400,
    )
