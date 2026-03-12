"""
teradata_ingest.py

Runs an Unstructured ingestion workflow that reads documents from S3 and
writes chunked, embedded results to a Teradata table.

Before starting the workflow the script checks whether the destination table
exists. If it does not exist it is created. If it already exists it is dropped
and recreated so the schema is always in a known state.

Usage:
    python teradata_ingest.py \
        --api-key <UNSTRUCTURED_API_KEY> \
        --td-host <TERADATA_HOST> \
        --td-user <TERADATA_USER> \
        --td-password <TERADATA_PASSWORD> \
        --td-database <DATABASE_NAME> \
        --td-table <TABLE_NAME> \
        --s3-uri <s3://bucket/path/>

Any argument can also be supplied via its corresponding environment variable
(see --help for the full list).

Dependencies:
    pip install unstructured-client teradatasql
"""

import argparse
import os
import sys
import time

import teradatasql
from unstructured_client import UnstructuredClient
from unstructured_client.models.shared import WorkflowNode, WorkflowType


UNSTRUCTURED_SERVER_URL = "https://platform.unstructuredapp.io/api/v1"


# ---------------------------------------------------------------------------
# Teradata table management
# ---------------------------------------------------------------------------

CREATE_TABLE_SQL = """\
CREATE SET TABLE "{database}"."{table}" (
  "id"               VARCHAR(64)    NOT NULL,
  "record_id"        VARCHAR(64),
  "element_id"       VARCHAR(64),
  "text"             VARCHAR(32000) CHARACTER SET UNICODE,
  "type"             VARCHAR(50),
  "embeddings"       VARCHAR(64000),
  "last_modified"    VARCHAR(50),
  "languages"        VARCHAR(200),
  "file_directory"   VARCHAR(500),
  "filename"         VARCHAR(255),
  "filetype"         VARCHAR(50),
  "record_locator"   VARCHAR(1000),
  "date_created"     VARCHAR(50),
  "date_modified"    VARCHAR(50),
  "date_processed"   VARCHAR(50),
  "permissions_data" VARCHAR(1000),
  "filesize_bytes"   INTEGER,
  "parent_id"        VARCHAR(64),
  PRIMARY KEY ("id")
)
"""

DROP_TABLE_SQL = 'DROP TABLE "{database}"."{table}"'

TABLE_EXISTS_SQL = """\
SELECT COUNT(*) AS cnt
FROM   DBC.TablesV
WHERE  DatabaseName = '{database}'
  AND  TableName    = '{table}'
  AND  TableKind    = 'T'
"""


def _connect(host: str, user: str, password: str) -> "teradatasql.TeradataConnection":
    return teradatasql.connect(host=host, user=user, password=password)


def _table_exists(cursor, database: str, table: str) -> bool:
    cursor.execute(TABLE_EXISTS_SQL.format(database=database, table=table))
    row = cursor.fetchone()
    return row is not None and row[0] > 0


def ensure_table(host: str, user: str, password: str, database: str, table: str) -> None:
    """Drop the table if it exists, then (re)create it."""
    print(f"Connecting to Teradata at {host} to verify table {database}.{table} ...")

    with _connect(host, user, password) as con:
        with con.cursor() as cur:
            if _table_exists(cur, database, table):
                print(f"Table {database}.{table} already exists -- dropping it.")
                cur.execute(DROP_TABLE_SQL.format(database=database, table=table))
                print("Table dropped.")
            else:
                print(f"Table {database}.{table} does not exist -- will create it.")

            cur.execute(CREATE_TABLE_SQL.format(database=database, table=table))
            print(f"Table {database}.{table} created successfully.")


# ---------------------------------------------------------------------------
# Argument parsing
# ---------------------------------------------------------------------------

def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Ingest S3 documents into Teradata via Unstructured."
    )

    parser.add_argument(
        "--api-key",
        default=os.getenv("UNSTRUCTURED_API_KEY"),
        help="Unstructured API key (env: UNSTRUCTURED_API_KEY)",
    )
    parser.add_argument(
        "--td-host",
        default=os.getenv("TD_HOST"),
        help="Teradata host / IP address (env: TD_HOST)",
    )
    parser.add_argument(
        "--td-user",
        default=os.getenv("TD_USER"),
        help="Teradata username (env: TD_USER)",
    )
    parser.add_argument(
        "--td-password",
        default=os.getenv("TD_PASSWORD"),
        help="Teradata password (env: TD_PASSWORD)",
    )
    parser.add_argument(
        "--td-database",
        default=os.getenv("TD_DATABASE"),
        help="Teradata database name (env: TD_DATABASE)",
    )
    parser.add_argument(
        "--td-table",
        default=os.getenv("TD_TABLE"),
        help="Teradata destination table name (env: TD_TABLE)",
    )
    parser.add_argument(
        "--s3-uri",
        default=os.getenv("S3_URI"),
        help="S3 URI to read documents from, e.g. s3://bucket/prefix/ (env: S3_URI)",
    )
    parser.add_argument(
        "--s3-anonymous",
        action="store_true",
        default=False,
        help="Use anonymous (unsigned) S3 access instead of AWS credentials",
    )

    args = parser.parse_args()

    required = {
        "--api-key": args.api_key,
        "--td-host": args.td_host,
        "--td-user": args.td_user,
        "--td-password": args.td_password,
        "--td-database": args.td_database,
        "--td-table": args.td_table,
        "--s3-uri": args.s3_uri,
    }
    missing = [name for name, value in required.items() if not value]
    if missing:
        parser.error(f"Missing required arguments: {', '.join(missing)}")

    return args


# ---------------------------------------------------------------------------
# Workflow helpers
# ---------------------------------------------------------------------------

def create_source_connector(client: UnstructuredClient, s3_uri: str, anonymous: bool) -> str:
    source_config: dict = {"remote_url": s3_uri, "recursive": True}

    if anonymous:
        source_config["anonymous"] = True
    else:
        aws_key = os.getenv("AWS_ACCESS_KEY_ID")
        aws_secret = os.getenv("AWS_SECRET_ACCESS_KEY")
        if aws_key:
            source_config["key"] = aws_key
        if aws_secret:
            source_config["secret"] = aws_secret

    res = client.sources.create_source(
        request={
            "create_source_connector": {
                "name": "S3 Source",
                "type": "s3",
                "config": source_config,
            }
        }
    )

    connector_id = res.source_connector_information.id
    print(f"Created source connector: {connector_id}")
    return connector_id


def create_destination_connector(
    client: UnstructuredClient,
    host: str,
    user: str,
    password: str,
    database: str,
    table: str,
) -> str:
    res = client.destinations.create_destination(
        request={
            "create_destination_connector": {
                "name": "Teradata Destination",
                "type": "teradata",
                "config": {
                    "host": host,
                    "user": user,
                    "password": password,
                    "database": database,
                    "table_name": table,
                },
            }
        }
    )

    connector_id = res.destination_connector_information.id
    print(f"Created destination connector: {connector_id}")
    return connector_id


def create_workflow(
    client: UnstructuredClient,
    source_id: str,
    destination_id: str,
) -> str:
    partition_node = WorkflowNode(
        name="Partitioner",
        subtype="vlm",
        type="partition",
        settings={
            "provider": "anthropic",
            "model": "claude-sonnet-4-20250514",
            "output_format": "application/json",
            "is_dynamic": False,
            "allow_fast": False,
            "format_html": True,
            "unique_element_ids": True,
        },
    )

    chunker_node = WorkflowNode(
        name="Chunker",
        subtype="chunk_by_title",
        type="chunk",
        settings={
            "new_after_n_chars": 1500,
            "max_characters": 2048,
            "overlap": 100,
            "include_orig_elements": True,
        },
    )

    embedder_node = WorkflowNode(
        name="Embedder",
        subtype="voyageai",
        type="embed",
        settings={"model_name": "voyage-multimodal-3"},
    )

    res = client.workflows.create_workflow(
        request={
            "create_workflow": {
                "name": "s3_to_teradata_workflow",
                "source_id": source_id,
                "destination_id": destination_id,
                "workflow_type": WorkflowType.CUSTOM,
                "workflow_nodes": [partition_node, chunker_node, embedder_node],
            }
        }
    )

    workflow_id = res.workflow_information.id
    print(f"Created workflow: {workflow_id}")
    return workflow_id


def run_workflow(client: UnstructuredClient, workflow_id: str) -> str:
    res = client.workflows.run_workflow(
        request={"workflow_id": workflow_id}
    )
    job_id = res.job_information.id
    print(f"Started job: {job_id}")
    return job_id


def poll_job(client: UnstructuredClient, job_id: str) -> None:
    while True:
        res = client.jobs.get_job(request={"job_id": job_id})
        job = res.job_information

        if job.status in ("SCHEDULED", "IN_PROGRESS"):
            print(f"Job status: {job.status} -- waiting 10 seconds...")
            time.sleep(10)
        elif job.status == "COMPLETED":
            print(f"Job finished with status: {job.status}")
            print(job.model_dump_json(indent=4))
            break
        else:
            raise RuntimeError(
                f"Job {job_id} ended with unexpected status: {job.status}\n"
                + job.model_dump_json(indent=4)
            )


# ---------------------------------------------------------------------------
# Public entry point (notebook and programmatic use)
# ---------------------------------------------------------------------------

def ingest(
    api_key: str,
    td_host: str,
    td_user: str,
    td_password: str,
    td_database: str,
    td_table: str,
    s3_uri: str,
    s3_anonymous: bool = False,
) -> None:
    """
    Run the full ingestion pipeline.

    Intended to be called directly from a Jupyter notebook cell or any other
    Python code. Raises exceptions on failure instead of calling sys.exit so
    the calling environment (and the notebook kernel) stays alive.

    Parameters
    ----------
    api_key       : Unstructured API key.
    td_host       : Teradata host / IP address.
    td_user       : Teradata username.
    td_password   : Teradata password.
    td_database   : Teradata target database.
    td_table      : Teradata target table name.
    s3_uri        : S3 URI to read source documents from.
    s3_anonymous  : Use anonymous S3 access (no AWS credentials).
    """
    client = UnstructuredClient(
        api_key_auth=api_key,
        server_url=UNSTRUCTURED_SERVER_URL,
    )

    ensure_table(
        host=td_host,
        user=td_user,
        password=td_password,
        database=td_database,
        table=td_table,
    )

    source_id = create_source_connector(client, s3_uri, s3_anonymous)
    destination_id = create_destination_connector(
        client,
        host=td_host,
        user=td_user,
        password=td_password,
        database=td_database,
        table=td_table,
    )
    workflow_id = create_workflow(client, source_id, destination_id)
    job_id = run_workflow(client, workflow_id)
    poll_job(client, job_id)


# ---------------------------------------------------------------------------
# CLI entry point
# ---------------------------------------------------------------------------

def main() -> None:
    args = parse_args()
    try:
        run(
            api_key=args.api_key,
            td_host=args.td_host,
            td_user=args.td_user,
            td_password=args.td_password,
            td_database=args.td_database,
            td_table=args.td_table,
            s3_uri=args.s3_uri,
            s3_anonymous=args.s3_anonymous,
        )
    except Exception as exc:
        print(f"Error: {exc}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
