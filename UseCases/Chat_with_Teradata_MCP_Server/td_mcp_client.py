import argparse
import asyncio
from asyncio import subprocess
import sys
from dataclasses import dataclass, field
from typing import Union, Any, Optional
from asyncio import TimeoutError
from openai import AsyncOpenAI
from openai.types.chat import ChatCompletionMessageParam, ChatCompletionToolParam
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client

# Configuration constants
MAX_RETRIES = 3
RETRY_DELAY = 1  # seconds
TIMEOUT = 30  # seconds
MODEL_NAME = "gpt-4.1"

# Initialize OpenAI client
openai_client = AsyncOpenAI()

# Create server parameters for stdio connection
server_params = StdioServerParameters(
    command="python",  # Executable
    args=["./src/teradata_mcp_server/server.py"],
    env=None,  # Optional environment variables
)


async def execute_tool_with_retry(
    session: ClientSession,
    tool_name: str,
    tool_args: dict,
    max_retries: int = MAX_RETRIES,
) -> Optional[Any]:
    """
    Execute a tool call with retry logic and timeout handling.

    Args:
        session: The client session
        tool_name: Name of the tool to execute
        tool_args: Arguments for the tool
        max_retries: Maximum number of retry attempts

    Returns:
        Tool execution result or None if all retries fail
    """
    for attempt in range(max_retries):
        try:
            async with asyncio.timeout(TIMEOUT):
                result = await session.call_tool(tool_name, tool_args)
                if "teradata_mcp_server - ERROR" in result.content[0].text:
                    raise ValueError("Error executing SQL query")
                return result
        except TimeoutError:
            pass
        except Exception as e:
            if attempt == max_retries - 1:
                raise
            await asyncio.sleep(RETRY_DELAY)
    return None


@dataclass
class Chat:
    """Manages chat interactions with Teradata database through OpenAI."""

    messages: list[ChatCompletionMessageParam] = field(default_factory=list)
    system_prompt: str = """You are a Teradata Database expert and you are tasked with generating SQL queries for Teradata based on user questions. 
    Your response should ONLY be based on the given context and follow the response guidelines and format instructions.

    Here are some tips for writing Teradata style queries: 
    * Always use table aliases when your SQL statement involves more than one source
    * Aggregated fields like COUNT(*) must be appropriately named
    * Unless the user specifies a specific number of examples they wish to obtain, always limit your query to at most 3 results using SELECT TOP 3
    * Remove unnecessary ORDER BY clauses unless required
    * Use TOP keyword instead of LIMIT or FETCH
    * If you receive "Bad character in format or data" error, change column values to get values from table only
    
    * Most critical: Use available Database: "DEMO_GLM_Fraud" and table: "transaction_data"
    
    Response Guidelines: 
    * Give answers in bulleted points with proper markup
    * Ensure responses are exclusively derived from query results
    * Create syntactically correct Teradata-style queries
    * Execute SQL and return final answers in simple English
    * Do not return JSON or SQL"""

    async def _handle_tool_call(
        self,
        session: ClientSession,
        tool_call: Any,
        available_tools: list[ChatCompletionToolParam],
    ) -> None:
        """Handle individual tool calls and their responses."""
        tool_name = tool_call.function.name
        tool_args = eval(tool_call.function.arguments)

        try:
            result = await execute_tool_with_retry(session, tool_name, tool_args)
            if result is None:
                return

            self._append_tool_messages(tool_call, tool_args, result)
            await self._get_ai_response(available_tools)

        except Exception as e:
            error_message = f"Error executing SQL query: {str(e)}"
            self.messages.append({"role": "assistant", "content": error_message})

    async def process_query(self, session: ClientSession, query: str) -> None:
        """Process a user query through OpenAI and execute resulting tool calls."""
        try:
            response = await session.list_tools()
            available_tools = [
                {
                    "type": "function",
                    "function": {
                        "name": tool.name,
                        "description": tool.description or "",
                        "parameters": tool.inputSchema,
                    },
                }
                for tool in response.tools
            ]

            ai_response = await self._get_ai_response(available_tools)

            if ai_response.tool_calls:
                for tool_call in ai_response.tool_calls:
                    await self._handle_tool_call(session, tool_call, available_tools)

        except Exception as e:
            pass

    async def run(self, query: str) -> None:
        """Initialize and run a single query session.

        Args:
            query: User query to process
        """
        try:
            async with stdio_client(server_params) as (read, write):
                async with ClientSession(read, write) as session:
                    await session.initialize()
                    self.messages.append({"role": "user", "content": query})
                    await self.process_query(session, query)
        except Exception as e:
            sys.exit(1)

    async def _get_ai_response(
        self, available_tools: list[ChatCompletionToolParam]
    ) -> Any:
        """Get response from OpenAI API with retry mechanism."""
        max_retries = 3
        retry_delay = 1  # seconds
        for attempt in range(max_retries):
            try:
                response = await openai_client.chat.completions.create(
                    model=MODEL_NAME,
                    messages=[
                        {"role": "system", "content": self.system_prompt},
                        *self.messages,
                    ],
                    tools=available_tools,
                    tool_choice="auto",
                )

                assistant_message = response.choices[0].message
                # if assistant_message.content is not None:
                if assistant_message.content:
                    print(f"AI response: {assistant_message.content}")
                    self.messages.append(
                        {"role": "assistant", "content": assistant_message.content}
                    )
                else:
                    print(
                        "Please try again in some time, right now our MCP server seems busy. or try to rephrase your question."
                    )
                    self.messages.append({"role": "assistant", "content": ""})

                return assistant_message

            except Exception as e:
                if attempt == max_retries - 1:  # Last attempt
                    raise  # Re-raise the exception after all retries are exhausted

                await asyncio.sleep(retry_delay)

    def _append_tool_messages(
        self, tool_call: Any, tool_args: dict, result: Any
    ) -> None:
        """Append tool-related messages to the conversation history."""
        self.messages.append(
            {
                "role": "assistant",
                "content": None,
                "tool_calls": [
                    {
                        "id": tool_call.id,
                        "type": "function",
                        "function": {
                            "name": tool_call.function.name,
                            "arguments": str(tool_args),
                        },
                    }
                ],
            }
        )
        self.messages.append(
            {
                "role": "tool",
                "tool_call_id": tool_call.id,
                "content": getattr(result.content[0], "text", ""),
            }
        )


def main():
    """Main entry point of the application."""
    try:
        # Set up argument parser
        parser = argparse.ArgumentParser(
            description="Teradata Database Query Assistant"
        )
        parser.add_argument(
            "--query",
            "-q",
            type=str,
            default="Hello",
            help='The query to process (default: "Hello")',
        )

        # Parse arguments
        args = parser.parse_args()

        # Run the chat with the provided query
        chat = Chat()
        asyncio.run(chat.run(args.query))
    except Exception as e:
        sys.exit(1)


if __name__ == "__main__":
    main()
