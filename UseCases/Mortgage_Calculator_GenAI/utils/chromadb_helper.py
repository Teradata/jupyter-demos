import json
from typing import List, Union

import chromadb
import pandas as pd
from chromadb.config import Settings
from chromadb.utils import embedding_functions

import hashlib
import uuid

default_ef = embedding_functions.DefaultEmbeddingFunction()


def deterministic_uuid(content: Union[str, bytes]) -> str:
    """Creates deterministic UUID on hash value of string or byte content.

    Args:
        content: String or byte representation of data.

    Returns:
        UUID of the content.
    """
    if isinstance(content, str):
        content_bytes = content.encode("utf-8")
    elif isinstance(content, bytes):
        content_bytes = content
    else:
        raise ValueError(f"Content type {type(content)} not supported !")

    hash_object = hashlib.sha256(content_bytes)
    hash_hex = hash_object.hexdigest()
    namespace = uuid.UUID("00000000-0000-0000-0000-000000000000")
    content_uuid = str(uuid.uuid5(namespace, hash_hex))

    return content_uuid


class ChromaDB_VectorStore:
    def __init__(self, config=None):
        if config is None:
            config = {}

        path = config.get("path", "./chroma_vectordb")
        self.embedding_function = config.get("embedding_function", default_ef)
        curr_client = config.get("client", "persistent")
        collection_metadata = config.get("collection_metadata", None)
        top_n_matches = 3
        self.n_results_sql = config.get(
            "n_results_sql", config.get("n_results", top_n_matches)
        )
        self.n_results_documentation = config.get(
            "n_results_documentation", config.get("n_results", top_n_matches)
        )
        self.n_results_ddl = config.get(
            "n_results_ddl", config.get("n_results", top_n_matches)
        )
        self.static_documentation = ""
        self.dialect = "Teradata"

        if curr_client == "persistent":
            self.chroma_client = chromadb.PersistentClient(
                path=path, settings=Settings(anonymized_telemetry=False)
            )
        elif curr_client == "in-memory":
            self.chroma_client = chromadb.EphemeralClient(
                settings=Settings(anonymized_telemetry=False)
            )
        elif isinstance(curr_client, chromadb.api.client.Client):
            # allow providing client directly
            self.chroma_client = curr_client
        else:
            raise ValueError(f"Unsupported client was set in config: {curr_client}")

        self.documentation_collection = self.chroma_client.get_or_create_collection(
            name="documentation",
            embedding_function=self.embedding_function,
            metadata=collection_metadata,
        )
        self.ddl_collection = self.chroma_client.get_or_create_collection(
            name="ddl",
            embedding_function=self.embedding_function,
            metadata=collection_metadata,
        )
        self.sql_collection = self.chroma_client.get_or_create_collection(
            name="sql",
            embedding_function=self.embedding_function,
            metadata=collection_metadata,
        )

    def generate_embedding(self, data: str, **kwargs) -> List[float]:
        embedding = self.embedding_function([data])
        if len(embedding) == 1:
            return embedding[0]
        return embedding

    def add_question_sql(self, question: str, sql: str, **kwargs) -> str:
        question_sql_json = json.dumps(
            {
                "question": question,
                "sql": sql,
            },
            ensure_ascii=False,
        )
        id = deterministic_uuid(question_sql_json) + "-sql"
        self.sql_collection.add(
            documents=question_sql_json,
            embeddings=self.generate_embedding(question_sql_json),
            ids=id,
        )

        return id

    def add_ddl(self, ddl: str, **kwargs) -> str:
        id = deterministic_uuid(ddl) + "-ddl"
        self.ddl_collection.add(
            documents=ddl,
            embeddings=self.generate_embedding(ddl),
            ids=id,
        )
        return id

    def add_documentation(self, documentation: str, **kwargs) -> str:
        id = deterministic_uuid(documentation) + "-doc"
        self.documentation_collection.add(
            documents=documentation,
            embeddings=self.generate_embedding(documentation),
            ids=id,
        )
        return id

    def get_training_data(self, **kwargs) -> pd.DataFrame:
        sql_data = self.sql_collection.get()

        df = pd.DataFrame()

        if sql_data is not None:
            # Extract the documents and ids
            documents = [json.loads(doc) for doc in sql_data["documents"]]
            ids = sql_data["ids"]

            # Create a DataFrame
            df_sql = pd.DataFrame(
                {
                    "id": ids,
                    "question": [doc["question"] for doc in documents],
                    "content": [doc["sql"] for doc in documents],
                }
            )

            df_sql["training_data_type"] = "sql"

            df = pd.concat([df, df_sql])

        ddl_data = self.ddl_collection.get()

        if ddl_data is not None:
            # Extract the documents and ids
            documents = [doc for doc in ddl_data["documents"]]
            ids = ddl_data["ids"]

            # Create a DataFrame
            df_ddl = pd.DataFrame(
                {
                    "id": ids,
                    "question": [None for doc in documents],
                    "content": [doc for doc in documents],
                }
            )

            df_ddl["training_data_type"] = "ddl"

            df = pd.concat([df, df_ddl])

        doc_data = self.documentation_collection.get()

        if doc_data is not None:
            # Extract the documents and ids
            documents = [doc for doc in doc_data["documents"]]
            ids = doc_data["ids"]

            # Create a DataFrame
            df_doc = pd.DataFrame(
                {
                    "id": ids,
                    "question": [None for doc in documents],
                    "content": [doc for doc in documents],
                }
            )

            df_doc["training_data_type"] = "documentation"

            df = pd.concat([df, df_doc])

        return df

    def remove_training_data(self, id: str, **kwargs) -> bool:
        if id.endswith("-sql"):
            self.sql_collection.delete(ids=id)
            return True
        elif id.endswith("-ddl"):
            self.ddl_collection.delete(ids=id)
            return True
        elif id.endswith("-doc"):
            self.documentation_collection.delete(ids=id)
            return True
        else:
            return False

    def remove_collection(self, collection_name: str) -> bool:
        """
        This function can reset the collection to empty state.

        Args:
            collection_name (str): sql or ddl or documentation

        Returns:
            bool: True if collection is deleted, False otherwise
        """
        if collection_name == "sql":
            self.chroma_client.delete_collection(name="sql")
            self.sql_collection = self.chroma_client.get_or_create_collection(
                name="sql", embedding_function=self.embedding_function
            )
            return True
        elif collection_name == "ddl":
            self.chroma_client.delete_collection(name="ddl")
            self.ddl_collection = self.chroma_client.get_or_create_collection(
                name="ddl", embedding_function=self.embedding_function
            )
            return True
        elif collection_name == "documentation":
            self.chroma_client.delete_collection(name="documentation")
            self.documentation_collection = self.chroma_client.get_or_create_collection(
                name="documentation", embedding_function=self.embedding_function
            )
            return True
        else:
            return False

    @staticmethod
    def _extract_documents(query_results) -> list:
        """
        Static method to extract the documents from the results of a query.

        Args:
            query_results (pd.DataFrame): The dataframe to use.

        Returns:
            List[str] or None: The extracted documents, or an empty list or
            single document if an error occurred.
        """
        if query_results is None:
            return []

        if "documents" in query_results:
            documents = query_results["documents"]

            if len(documents) == 1 and isinstance(documents[0], list):
                try:
                    documents = [json.loads(doc) for doc in documents[0]]
                except Exception as e:
                    return documents[0]

            return documents

    def get_similar_question_sql(self, question: str, **kwargs) -> list:
        return ChromaDB_VectorStore._extract_documents(
            self.sql_collection.query(
                query_texts=[question],
                n_results=self.n_results_sql,
            )
        )

    def get_related_ddl(self, question: str, **kwargs) -> list:
        return ChromaDB_VectorStore._extract_documents(
            self.ddl_collection.query(
                query_texts=[question],
                n_results=self.n_results_ddl,
            )
        )

    def get_related_documentation(self, question: str, **kwargs) -> list:
        return ChromaDB_VectorStore._extract_documents(
            self.documentation_collection.query(
                query_texts=[question],
                n_results=self.n_results_documentation,
            )
        )

    def str_to_approx_token_count(self, string: str) -> int:
        return len(string) / 4

    def add_ddl_to_prompt(
        self, initial_prompt: str, ddl_list: list[str], max_tokens: int = 14000
    ) -> str:
        if len(ddl_list) > 0:
            initial_prompt += "\n\nUse the following Tables: \n"

            for ddl in ddl_list:
                if (
                    self.str_to_approx_token_count(initial_prompt)
                    + self.str_to_approx_token_count(ddl)
                    < max_tokens
                ):
                    initial_prompt += f"{ddl}\n\n"

        return initial_prompt

    def add_documentation_to_prompt(
        self,
        initial_prompt: str,
        documentation_list: list[str],
        max_tokens: int = 14000,
    ) -> str:
        if len(documentation_list) > 0:
            initial_prompt += "\n\nUse the following Additional Context:\n"

            for documentation in documentation_list:
                if (
                    self.str_to_approx_token_count(initial_prompt)
                    + self.str_to_approx_token_count(documentation)
                    < max_tokens
                ):
                    initial_prompt += f"{documentation}\n\n"

        return initial_prompt

    def add_sql_to_prompt(
        self, initial_prompt: str, sql_list: list[str], max_tokens: int = 14000
    ) -> str:
        if len(sql_list) > 0:
            initial_prompt += "\nFew examples of Question-SQL Pairs:\n"

            for question in sql_list:
                if (
                    self.str_to_approx_token_count(initial_prompt)
                    + self.str_to_approx_token_count(question["sql"])
                    < max_tokens
                ):
                    initial_prompt += (
                        f"Question: {question['question']}\nSQL: {question['sql']}\n\n"
                    )

        return initial_prompt

    def get_sql_prompt(
        self,
        initial_prompt: str,
        question: str,
        question_sql_list: list,
        ddl_list: list,
        doc_list: list,
        **kwargs,
    ):
        """
        This method is used to generate a prompt for the LLM to generate SQL.

        Args:
            question (str): The question to generate SQL for.
            question_sql_list (list): A list of questions and their corresponding SQL statements.
            ddl_list (list): A list of DDL statements.
            doc_list (list): A list of documentation.

        Returns:
            any: The prompt for the LLM to generate SQL.
        """

        if initial_prompt is None:
            # initial_prompt = ""
            # initial_prompt += (
            #     "You are an agent designed to interact with a SQL database. \n"
            #     f"Given an input question, create a syntactically correct {self.dialect} query to run, then look at the results of the query and return the answer. \n"
            #     "Unless the user specifies a specific number of examples they wish to obtain, always limit your query to at most 3 results. \n"
            #     "You can order the results by a relevant column to return the most interesting examples in the database. \n"
            #     "Never query for all the columns from a specific table, only ask for the relevant columns given the question.\n"
            #     "You have access to tools for interacting with the database. \n"
            #     "Only use the given tools. Only use the information returned by the tools to construct your final answer. \n"
            #     "You MUST double check your query before executing it. If you get an error while executing a query, rewrite the query and try again. \n"
            #     "DO NOT make any DML statements (INSERT, UPDATE, DELETE, DROP etc.) to the database. \n"
            #     "If the question does not seem related to the database, just return 'I don't know' as the answer."
            # )
            initial_prompt = f"""You are a {self.dialect} expert and you are tasked with generating SQL queries for Teradata based on user questions
            \nYour response should ONLY be based on the given context and follow the response guidelines and format instructions."""

        initial_prompt = self.add_ddl_to_prompt(
            initial_prompt, ddl_list, max_tokens=14000
        )

        if self.static_documentation != "":
            doc_list.append(self.static_documentation)

        initial_prompt = self.add_documentation_to_prompt(
            initial_prompt, doc_list, max_tokens=14000
        )

        initial_prompt = self.add_sql_to_prompt(
            initial_prompt, question_sql_list, max_tokens=14000
        )

        initial_prompt += (
            "\nHere are some tips for writing Teradata style queries: \n"
            "* Always use table aliases when your SQL statement involves more than one source \n"
            "* Aggregated fields like COUNT(*) must be appropriately named \n"
            "* Unless the user specifies a specific number of examples they wish to obtain, always limit your query to at most 3 results by using SELECT TOP 3, note that LIMIT function does not works in Teradata DB.\n"
            "* [Best] If the question can be answered with the available tables: {{'sql': <sql here>}} \n"
            "* If the question cannot be answered with the available tables: {{'error': <explanation here>}} \n"
            "* Remove unnecessary ORDER BY clauses unless required. \n"
            "* Remember: Do not use 'LIMIT' or 'FETCH' keyword in the SQLQuery, instead of TOP keyword, For Example: To select top 3 results, use TOP keyword instead of LIMIT or FETCH.  \n"
            "\nResponse Guidelines: \n"
            # "* If the provided context is sufficient, please generate a valid SQL query without any explanations for the question. \n"
            # "* If the provided context is almost sufficient but requires knowledge of a specific string in a particular column, please generate an intermediate SQL query to find the distinct strings in that column. Prepend the query with a comment saying intermediate_sql \n"
            "* If the provided context is insufficient, please explain why it can't be generated. \n"
            # "* Please use the most relevant table(s). \n"
            # "* If the question has been asked and answered before, please repeat the answer exactly as it was given before. \n"
            "* Most important: Always give property options with details like PropertyID, Property Type, Building Size, Price, Address, Bedroom Count. PropertyID is mandatory in the response.\n"
            "* Critical Instruction: Ensure responses are exclusively derived from query results. Refrain from generating or adding synthetic data in any form.\n"
            # "* Provide answer in simple english statement. \n"
            "* Most important: The function should return the relevant answer for the question asked only based on Query results.\n"
            # "* Append SQL query to the final answer: \n"
            "\nGiven a user's question about this data, write a valid Teradata SQL query that accurately extracts or calculates the requested information from these tables "
            "and adheres to SQL best practices for Teradata database, optimizing for readability and performance where applicable. Do not try to make any answer"
        )

        return initial_prompt
