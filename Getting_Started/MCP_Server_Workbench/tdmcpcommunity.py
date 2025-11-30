#!/usr/bin/env python3
import argparse
import os
import sys
import asyncio
from pathlib import Path

# add repo src/ to import path
sys.path.append(str(Path(__file__).resolve().parent / "teradata-mcp-server" / "src"))

from teradata_mcp_server.config import Settings  # :contentReference[oaicite:0]{index=0}
from teradata_mcp_server.app import create_mcp_app  # :contentReference[oaicite:1]{index=1}

if __name__ == "__main__":
    p = argparse.ArgumentParser(description="Start Teradata MCP Server (HTTP only).")
    p.add_argument("port", type=int, help="HTTP port (server listens here)")
    p.add_argument("--host", required=True, help="Teradata DB host")
    p.add_argument("--user", required=True, help="Teradata DB user")
    p.add_argument("--password", required=True, help="Teradata DB password")
    args = p.parse_args()

    db_uri = f"teradata://{args.user}:{args.password}@{args.host}:1025/{args.user}"

    # Build Settings explicitly (no env/CLI reliance). HTTP mode is 'streamable-http'. :contentReference[oaicite:2]{index=2}
    settings = Settings(
        database_uri=db_uri,
        mcp_transport="streamable-http",
        mcp_host="127.0.0.1",
        mcp_port=args.port,
        mcp_path="/mcp/",
        logging_level="INFO",
    )

    mcp, _logger = create_mcp_app(settings)  # returns FastMCP + logger  :contentReference[oaicite:3]{index=3}

    asyncio.run(mcp.run_http_async(
        transport="streamable-http",
        host=settings.mcp_host,
        port=settings.mcp_port,
        path=settings.mcp_path
    ))  # runs HTTP transport  :contentReference[oaicite:4]{index=4}
