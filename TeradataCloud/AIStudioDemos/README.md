# Teradata AI Studio — Demo Notebooks

**Teradata AI Studio** is a unified, enterprise-grade workspace that allows developers, data scientists, and business users to build, activate, and govern AI outcomes. Part of the Teradata Autonomous Knowledge Platform, it eliminates data movement and tool fragmentation by bringing AI/ML pipelines, vector storage, and autonomous agents together directly on trusted data. [[1](https://www.teradata.com/platform/ai-studio)] [[2](https://www.teradata.com/press-releases/2026/introducing-the-autonomous-knowledge-platform)] [[3](https://www.teradata.com/insights/data-platform/tera-an-agentic-ai-workspace)]

---

## Key Features & Components

### 1. Tera (Agentic AI Workspace)

| Component | Description |
|---|---|
| **Tera Analyze** | Allows business users to query and analyze enterprise data using natural language, without needing to write SQL. |
| **Tera Code** | Assists developers and data teams in writing and debugging code via natural language prompts. |
| **Tera Claw & Agents** | Orchestrates built-in and autonomous multi-agent systems to perform tasks ranging from operational efficiency to continuous infrastructure monitoring. [[1](https://www.teradata.com/press-releases/2026/introducing-the-autonomous-knowledge-platform)] [[2](https://docs.teradata.com/r/Teradata-AI-Studio-Release-Notes/AI-Studio-Release-Notes)] |

### 2. Core Capabilities & Workspaces

- **Unified Developer Environment:** Includes integrated notebooks for Python and SQL to easily test and collaborate on workflows. [[1](https://www.teradata.com/insights/ai-and-machine-learning/implementing-ai-agents-on-premises)] [[2](https://www.teradata.com/insights/ai-and-machine-learning/build-ai-not-infrastructure)]
- **Hybrid Retrieval Agents:** Built on an **Enterprise Vector Store** that allows teams to build RAG (Retrieval-Augmented Generation) systems spanning both structured and unstructured data. [[1](https://www.prnewswire.com/news-releases/introducing-the-teradata-autonomous-knowledge-platform-302764902.html)] [[2](https://www.teradata.com/platform/ai-studio)]
- **Model Lifecycle Management:** Provides end-to-end **ModelOps** and **ModelHub** so teams can train, fine-tune, monitor, and deploy large language models (LLMs) securely. [[1](https://www.teradata.com/press-releases/2026/introducing-the-autonomous-knowledge-platform)] [[2](https://www.teradata.com/insights/ai-and-machine-learning/build-ai-not-infrastructure)]
- **Enterprise MCP (Multi-Agent Control Plane):** Provides secure integration, governance, monitoring, and access control required for agentic AI in regulated enterprise environments. [[1](https://www.teradata.com/platform/ai-studio)] [[2](https://docs.teradata.com/r/Teradata-AI-Studio-Release-Notes/AI-Studio-Release-Notes)]

### 3. Deployment Flexibility

- **Teradata Cloud:** Cloud-based access to on-demand elastic compute and data foundation features.
- **Teradata Factory:** An on-premises extension that uses Dell PowerEdge servers and NVIDIA AI infrastructure to bring sovereign AI and high-performance capabilities to environments with strict data residency requirements. [[1](https://www.teradata.com/press-releases/2026/introducing-the-autonomous-knowledge-platform)]

---

## Demo Notebooks

### [`Highly_Scalable_Data_Analysis_AI_Agents.ipynb`](Highly_Scalable_Data_Analysis_AI_Agents.ipynb)

Demonstrates how to build highly scalable data analysis AI agents directly on Teradata using in-database ML and a LangGraph ReAct agent.

**What it covers:**

| Step | Description |
|---|---|
| **Connection** | Establishes a JWT-authenticated Teradata connection using `teradataml`. |
| **In-Database Data Loading** | Loads the `House_Prices` dataset from the `DEMO_DataScienceExploration` schema as a `tdml.DataFrame` — no data movement required. |
| **In-Database K-Means Clustering** | Runs `tdml.KMeans` directly on Teradata to cluster housing records by price, size, bedrooms, bathrooms, and floors into 3 groups. |
| **LLM Configuration** | Configures a `ChatOpenAI`-compatible LLM (Anthropic Claude Sonnet) via Teradata's LiteLLM proxy endpoint. |
| **ReAct Agent** | Uses LangGraph's `create_react_agent` to build a tool-calling agent that reasons over the clustering results and returns a natural language response. |

**Key Libraries:**

```
teradataml    # In-database ML and Teradata DataFrame API
langchain     # LLM tooling and agent primitives
langgraph     # ReAct agent orchestration
langchain-openai  # OpenAI-compatible LLM client
httpx         # HTTP client for LLM endpoint
```

**Prerequisites:**
- Access to a Teradata Vantage instance (cloud or on-premises via Teradata AI Studio)
- A valid JWT session token (auto-generated via `%gen_token` magic within AI Studio)
- An OpenAI-compatible API key (or Teradata LiteLLM proxy credentials)
- The `DEMO_DataScienceExploration.House_Prices` table available in your Teradata instance

---

## Further Resources

- [Teradata AI Studio Product Page](https://www.teradata.com/platform/ai-studio)
- [A Developer's Guide to the Teradata Autonomous Knowledge Platform](https://www.youtube.com/watch?v=lzqn5mz893k) *(YouTube, 41:49 — Teradata, May 2026)*
- [AI Studio Release Notes](https://docs.teradata.com/r/Teradata-AI-Studio-Release-Notes/AI-Studio-Release-Notes)
- [Implementing AI Agents On-Premises](https://www.teradata.com/insights/ai-and-machine-learning/implementing-ai-agents-on-premises)
- [Build AI, Not Infrastructure](https://www.teradata.com/insights/ai-and-machine-learning/build-ai-not-infrastructure)
