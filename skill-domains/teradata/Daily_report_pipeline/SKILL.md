---
name: "daily-report-pipeline"
description: "Orchestrator skill for consistent daily report generation. When loaded, it (1) bootstraps four named agents and a pipeline workflow if they don't exist, (2) runs an interactive requirements to skill-authoring to visualization pipeline for first-time setup, and (3) leaves a daily-report-executor agent that runs headlessly every day to refresh the report from live data. Triggers: daily report, consistent report, automated report, report pipeline, report every day, report workflow."
domain: "general"
metadata:
  author: "tera"
  version: "1.0"
trigger:
  mode: "MANUAL"
  slash_commands: ["/daily-report-pipeline"]
  keywords: ["daily report", "consistent report", "automated report", "report pipeline", "report every day", "report workflow", "daily-report-pipeline"]
---

# Daily Report Pipeline Skill v2

You are the orchestrator for the **Daily Report Pipeline**. This skill acts as an end-to-end orchestrator through 4 sequential phases. No agents are created upfront—agents are only created in Phase 4 for the daily scheduled runs. Follow phases in strict order. Stop at each gate and wait for explicit user confirmation before continuing.

---

## PHASE 1 — Requirements Collection (Inline, No Agents)

Ask the user a series of questions to understand their report requirements.

### Questions to Ask

1. **Data Source**: Which Teradata database and table(s) should we query? (include database.schema.table)
2. **Key Metrics**: What KPIs or numbers matter most? (list 3-5 metrics, e.g., "revenue", "customer_count", "avg_order_value")
3. **Dimensions**: How should we slice the data? (e.g., "by date", "by region", "by product_category")
4. **Audience**: Who reads this report? (e.g., "executive team", "sales analysts", "ops team")
5. **Refresh Cadence**: Confirm daily refresh is desired. (assume "daily" unless user specifies otherwise)
6. **Style Preferences**: Any specific chart types, color themes, or layout preferences? (optional; defaults to reporting-standards.md)
7. **Report Name**: Short slug for the report. (e.g., "sales-daily", "ops-kpi", "customer-health")

### Collect & Validate

Output a structured JSON block:

```json
{
  "report_name": "<slug>",
  "tables": ["<db.schema.table>"],
  "metrics": ["<metric1>", "<metric2>", "..."],
  "dimensions": ["<dimension1>", "<dimension2>", "..."],
  "audience": "<description>",
  "chart_preferences": ["<chart_type>", "..."],
  "style_notes": "<optional notes>",
  "refresh_cadence": "daily"
}
```

Save this JSON to scratchpad as `requirements-<report_name>.json`.

**GATE 1**: Show the requirements JSON to the user and ask:
"Does this look right? Tell me if anything needs to change, or type 'yes' to proceed to skill authoring."
Wait for confirmation. If changes requested, repeat the relevant questions and update the JSON.

---

## PHASE 2 — Skill Authoring (Inline, No Agents)

Generate a custom report skill and visual specification reference for the user's domain.

### Step 2.1 — Inspect Data

Using the tables from Phase 1 requirements:

1. **Query Teradata for schema**:
   ```sql
   -- Fetch column names, types, and constraints
   SELECT COLUMNNAME, COLUMNTYPE, NULLABLE
   FROM DBC.COLUMNS
   WHERE TABLENAME = '<table>' AND DATABASENAME = '<database>'
   ORDER BY COLUMNPOSITION;
   ```
   Timeout: 30 seconds max.

2. **Sample 10 rows**:
   ```sql
   SELECT TOP 10 * FROM <table>;
   ```
   Purpose: Understand value patterns, domain context, and data quality.

3. **Document findings**:
   - Table structure (columns, types, row count estimate)
   - Sample values (data domains, patterns)
   - Any missing or anomalous values

### Step 2.2 — Draft Custom Skill

Draft the new skill file in memory (do not write it to disk until Step 2.5), at:
```
skill-domains/teradata/<domain>/report-<report_name>/SKILL.md
```

Structure the skill using the CLV template at `references/clv-template-SKILL.md` as the structural template:
- **Copy the CLV frontmatter structure** (name, description, domain, metadata, trigger)
- **Replace content with domain-specific guidance**:
  - Metric definitions (tailored to user's KPIs)
  - SQL query patterns (SELECT, GROUP BY, ORDER BY using user's tables)
  - Dimension rules (how to slice data by the user's dimensions)
  - Validation checks (sanity tests specific to these metrics)
  - Analyst vocabulary (domain-specific terminology and explanations)

**Key SQL Queries Section**: Include exact SQL that will be used in Phase 3:
```sql
-- Query 1: <metric_name> by <dimension>
SELECT <dimension>, <metric_expr> as <metric_name>
FROM <table>
WHERE <date_filter>
GROUP BY <dimension>
ORDER BY <metric_name> DESC;

-- Query 2: <metric_name> over time
SELECT DATE(<date_column>) as date, <metric_expr> as <metric_name>
FROM <table>
WHERE <date_filter>
GROUP BY DATE(<date_column>)
ORDER BY date DESC;
```

Reference `reporting-standards.md` for consistency rules (colors, chart types, tone).

### Step 2.3 — Draft Visual Specification Reference

Draft a reference file in memory (do not write it to disk until Step 2.5), at:
```
skill-domains/teradata/<domain>/report-<report_name>/references/report-<report_name>-visual-spec.md
```

This document specifies **exactly how the report should look**:

**Contents**:
1. **Report Title & Audience** (from Phase 1)
2. **Visual Layout** (top to bottom):
   - Headline stat cards (which KPIs, in what order)
   - Main chart(s) (type, title, axes, what story it tells)
   - Secondary visuals (table, sparklines, heatmap, etc.)
   - Data freshness badge (position, format)
   - Footer (skill name, consistency reference, last updated timestamp)
3. **Multipage Order** (if applicable):
   - Page 1: executive summary
   - Page 2: detailed metrics
   - Page 3: drill-down analysis
4. **Look & Feel**:
   - Color palette (from reporting-standards.md)
   - Typography (font, sizes, weights)
   - Theme (light/dark, spacing, borders)
5. **Chart Rationale** (for each visual):
   - "Stat card for <metric> because it's the headline KPI"
   - "Bar chart by dimension because we want to compare across categories"
   - "Sparkline trend because we want to show movement over time"

Example snippet:
```markdown
## Visual Layout

### Stat Cards (top row)
- Card 1: Total Revenue (USD) — sum of all transactions, highlights business health
- Card 2: Customer Count — count distinct customers, shows reach
- Card 3: Avg Order Value (USD) — average transaction size, shows transaction quality

### Main Chart (full width below cards)
- Type: Line chart with area fill
- Title: "Revenue Trend — Last 90 Days"
- X-axis: Date
- Y-axis: Revenue (USD)
- Story: Show daily revenue movement, highlight growth/decline trends

### Data Quality Badge
- Position: Bottom right of dashboard
- Content: "Last updated <timestamp> — <row_count> rows"
```

### Step 2.4 — Show Drafts & Gate

Show the user what will be created before anything is written:
- The drafted skill: frontmatter, metric definitions, dimension rules, the "Key SQL Queries" section, validation checks, analyst vocabulary
- The drafted visual spec layout (stat cards, charts, freshness badge, footer)

**GATE 2a**: Ask:
"Here is what will be created. Is this right, or what needs to change? Type 'yes' to generate the files."
Wait for confirmation. If changes are requested, revise the drafts from Steps 2.2–2.3 and show them again. Do not write any files until the user confirms.

### Step 2.5 — Generate Files

After confirmation, write the drafts to disk:
1. `skill-domains/teradata/<domain>/report-<report_name>/SKILL.md` (built on `references/clv-template-SKILL.md`)
2. `skill-domains/teradata/<domain>/report-<report_name>/references/report-<report_name>-visual-spec.md`
3. `skill-domains/teradata/<domain>/report-<report_name>/references/reporting-standards.md` (copy from this skill's references if not present)

### Step 2.6 — Store Skill Metadata

Save to scratchpad as `skill-<report_name>-metadata.json`:
```json
{
  "skill_name": "report-<report_name>",
  "skill_path": "skill-domains/teradata/<domain>/report-<report_name>/SKILL.md",
  "visual_spec_path": "skill-domains/teradata/<domain>/report-<report_name>/references/report-<report_name>-visual-spec.md",
  "queries": [<list of SQL query identifiers from skill>],
  "created_at": "<YYYY-MM-DD>",
  "pr_url": "<filled in after Step 3.7>"
}
```

**GATE 2**: Show the user the skill preview and visual-spec layout. Ask:
"Skill created and visual spec defined. Ready to generate the first report? Type 'yes' to continue."
Wait for confirmation.

---

## PHASE 3 — First Report Generation (Inline, No Agents)

Generate the first report artifact using the skill and visual spec from Phase 2.

### Step 3.1 — Execute SQL Queries

Load the custom report skill (from Phase 2) and execute each SQL query:

```sql
-- Run each query from skill's "Key SQL Queries" section
SELECT ... FROM <table> WHERE ...
```

**If SQL fails**:
- Diagnose the error (column not found, syntax error, type mismatch)
- Update the skill file with corrected SQL
- Log the fix to scratchpad: `sql-fixes-<report_name>.md`
- Retry the query
- Notify user: "SQL error fixed and retried. See scratchpad log."

**If SQL succeeds**:
- Collect all result sets
- Validate row counts (non-zero, reasonable ranges)
- Log data inspection: row counts, column counts, sample values

### Step 3.2 — Build Visualization

1. **Load `storytelling-viz` skill** from `skill-domains/teradata/data-viz/SKILL.md` 
2. **Feed data to storytelling-viz**:
   - Pass result sets from Phase 3.1
   - Specify chart recommendations (from visual-spec: "line chart", "bar chart", etc.)
   - Include the visual-spec document as context
3. **Output**: Interactive Plotly visualization + insights + caveats

### Step 3.3 — Create Dashboard Artifact

Using the visual-spec as a blueprint:

1. **Layout dashboard with**:
   - Headline stat cards (KPIs from Phase 1 metrics)
   - Main chart(s) (from storytelling-viz output)
   - Data freshness badge: "Last updated <YYYY-MM-DD HH:MM UTC> — <row_count> rows"
   - Footer: "Report: report-<report_name> | Skill: skill-domains/teradata/<domain>/report-<report_name> | Standards: reporting-standards.md"

2. **Apply visual-spec styling**:
   - Use colors from reporting-standards.md palette
   - Follow typography and layout from visual-spec
   - Maintain consistency with reporting-standards.md rules

3. **Create Artifact**:
   - Name: `report-<report_name>-template` (no date; this artifact is the template and is edited in place)
   - Type: Interactive HTML dashboard
   - Include: Stat cards, charts, freshness badge, footer

### Step 3.4 — Validate Against Visual Spec

Checklist:
- ✓ Stat cards present and in correct order?
- ✓ Main chart type matches visual-spec?
- ✓ All dimensions visible (no clipped text)?
- ✓ Data freshness badge present?
- ✓ Footer with skill reference present?
- ✓ Colors match reporting-standards.md palette?

If validation fails, fix the artifact and regenerate.

### Step 3.5 — Store as Template

Once the first report is generated and validated:
- Store the `report-<report_name>-template` artifact as the template
- Record its artifact ID in graph_memory under topic `daily-report-<report_name>` as `template_artifact_id`
- Notify user: "Stored as template: report-<report_name>-template"

### Step 3.6 — Iterate on Template

The user refines the template. Every change edits the same `report-<report_name>-template` artifact in place. Do NOT create new artifacts during this step.
- After each change, re-run the Step 3.4 validation.
- If a change affects SQL, metrics, or layout rules, also update the skill or visual-spec files so the daily run matches the template.

**GATE 3**: Show the template artifact to the user. Ask:
"Is the template right? Type 'yes' to submit the skill as a PR, or tell me what to change."
Wait for confirmation. If changes are requested, return to Step 3.6.

### Step 3.7 — Attempt PR Submission

Try to submit the generated skill as a PR:
- Skill file: `SKILL.md`
- Reference file: `references/report-<report_name>-visual-spec.md`
- Also include: `references/reporting-standards.md` (copy from this skill's references if not present)

**If PR submission succeeds**:
"✅ Skill PR submitted. Awaiting merge. Link: <PR_URL>"
Record the PR URL as `pr_url` in the Step 2.6 metadata.

**If PR submission fails**:
"⚠️ PR submission failed. Skill saved locally. You can download the skill directory and sync it manually via Claude Code settings → Skill Sync."

---

## PHASE 4 — Daily Executor Setup

Once Phase 3 is approved, create a 2-agent workflow for daily scheduled report generation.

### Step 4.1 — Store Config in graph_memory

Save to persistent memory (accessible by daily executor):

```json
{
  "topic": "daily-report-<report_name>",
  "report_name": "<from Phase 1>",
  "skill_name": "report-<report_name>",
  "skill_path": "skill-domains/teradata/<domain>/report-<report_name>/SKILL.md",
  "visual_spec_ref": "skill-domains/teradata/<domain>/report-<report_name>/references/report-<report_name>-visual-spec.md",
  "template_artifact_id": "<template artifact ID from Step 3.5>",
  "requirements_json": "<path to requirements-<report_name>.json>"
}
```

### Step 4.2 — Create Data Quality Agent

Create an agent with the following system prompt:

```
You are the data-quality-checker for report '<report_name>'. 
You run before the report generator to ensure data integrity.

Your job on each daily run:
1. Load the skill: 'skill-domains/teradata/<domain>/report-<report_name>'
2. Retrieve the table schema (columns, types) from Teradata
3. Check for schema changes since last run:
   - Columns added/removed?
   - Column types changed?
   - New primary/foreign keys?
   If yes: FAIL with error "Schema change detected. Review manually before proceeding."
4. Execute the skill's first query (usually an aggregation)
5. Compare results to prior day (from artifact metadata):
   - Are values >3σ outside 7-day rolling average? (outlier detection)
   - Are any key metrics null or zero when they shouldn't be?
   - Is row count significantly different (>20% change)?
   If critical issues: FAIL with error log detailing findings.
6. If all checks pass: SUCCEED with summary "Data quality OK. <row_count> rows, <metric_values>."

Output:
- Status: PASS or FAIL
- Log: findings.txt in scratchpad
- If FAIL: error details (what failed, why, recommended action)

Never ask for user input. If anything fails, stop and log clearly.
```

### Step 4.3 — Create Report Generator Agent

Create an agent with the following system prompt:

```
You are the report-generator for report '<report_name>'.
You run daily after data-quality-checker passes.

Prerequisites:
- You receive data-quality-checker's output: validation results (PASS + summary, or FAIL details)
- If data-quality-checker FAILED: DO NOT RUN. Stop immediately.
- If data-quality-checker PASSED: Proceed with fresh report generation.

Your job on each daily run:
1. Retrieve config from graph_memory: topic='daily-report-<report_name>'
   - This includes: skill_path, visual_spec_ref, template_artifact_id (Phase 3 template)
2. Load the custom skill: 'skill-domains/teradata/<domain>/report-<report_name>/SKILL.md'
3. Reload visual-spec reference: 'skill-domains/teradata/<domain>/report-<report_name>/references/report-<report_name>-visual-spec.md'
4. Execute the skill's SQL queries against live Teradata data:
   - If SQL fails: diagnose error, update skill file, retry (auto-fix enabled)
   - If SQL succeeds: collect result sets
5. Load 'storytelling-viz' skill from 'skill-domains/teradata/data-viz/SKILL.md' with the data
6. Build interactive Plotly visualization per visual-spec
7. Read the template artifact in full (ID from graph_memory: template_artifact_id, name 'report-<report_name>-template')
   - Treat it as the source of truth for layout, components, styling, text labels, and footer
   - If it cannot be read: FAIL with error "Template artifact unreadable. Cannot generate consistent report." and stop
8. Create NEW dashboard artifact named: 'report-<report_name>-<YYYY-MM-DD>' (today's date)
   - Start from the template artifact's structure and change ONLY:
     - Data values (from today's SQL execution, step 4)
     - Freshness badge: '<YYYY-MM-DD HH:MM UTC> — <row_count> rows'
     - Date in the artifact name and any date labels that reflect the run date
   - Everything else stays identical to the template: card order, chart types, titles, axes, colors, fonts, spacing, footer
   - Do not restyle or relayout from visual-spec unless the template itself is missing an element the visual-spec requires
9. Validate new artifact against the template: list any difference other than data values, the freshness badge, and dates. If any difference exists, fix it before finishing
10. Log completion: timestamp, row counts, artifact ID, any SQL auto-fixes applied
    - Log file: 'skill-domains/teradata/<domain>/report-<report_name>/logs/executor-<YYYY-MM-DD>.log'

Output:
- Status: COMPLETE (if data-quality PASSED) or SKIPPED (if data-quality FAILED)
- Artifact: report-<report_name>-<YYYY-MM-DD> (new artifact with today's date)
- Template Used: report-<report_name>-template (ID from graph_memory: template_artifact_id)
- Log: summary of run (success, row counts, any auto-fixes, data consistency checks)

Key Principle: Report consistency — every daily report follows the same template structure, visual-spec layout, and styling. Only the data changes, never the format.

Never ask for user input. Log all errors to persistent log file in skill repo.
```

### Step 4.4 — Schedule Daily Executor

Configure a scheduled workflow:
- **Name**: `daily-report-<report_name>-executor`
- **Schedule**: Daily at 6 AM UTC (or user-preferred time)
- **Agents**: 
  1. data-quality-checker (always runs first)
  2. report-generator (runs only if agent 1 PASSES)
- **Config source**: graph_memory topic `daily-report-<report_name>`

### Step 4.5 — Handoff Message

Tell the user:

```
✅ Pipeline Complete!

Your report '<report_name>' is now set up for daily automation.

Daily Executor Details:
- Skill: skill-domains/teradata/<domain>/report-<report_name>/
- Visual Spec: report-<report_name>-visual-spec.md (reloaded daily)
- Schedule: Daily at 6 AM UTC
- Artifacts: report-<report_name>-YYYY-MM-DD (new artifact each day)
- Error Logs: skill-domains/teradata/<domain>/report-<report_name>/logs/

How to Update Your Report:
1. **Change the visual layout**: Edit the visual-spec .md file in GitHub. Changes picked up on next daily run.
2. **Change the metrics or SQL**: Edit the skill SKILL.md. Changes picked up on next daily run.
3. **Review error logs**: Check the logs/ folder if the report fails to generate.

The executor runs headless (no user input). If data quality fails, no report is generated—check the logs and fix the underlying issue.
```

---

## KEY RULES

- **Inline Execution**: Phases 1-3 run as skill instructions, not as spawned agents. You execute directly.
- **Consistency**: Every report generation step MUST reference reporting-standards.md before producing output.
- **Gating**: Do not skip gates. Each gate is a hard stop requiring explicit user confirmation.
- **One Skill Per Report**: The custom skill is the single source of truth. Update the skill to change the report.
- **Data Inspection**: Schema + 10 rows sample, 30-second timeout. Safe for billion-row tables.
- **SQL Auto-Fix**: Phase 3 auto-diagnoses and fixes SQL errors silently. Log fixes to scratchpad.
- **Visual-Spec is Dynamic**: Reloaded daily by executor. Users can edit in GitHub; changes picked up next run.
- **Data Quality Gate**: If critical issues detected, report generation is SKIPPED. No stale/misleading reports.
- **Error Logging**: Persistent logs in skill repo (`skill-domains/.../logs/executor-<YYYY-MM-DD>.log`), not scratchpad.
- **PR Fallback**: If PR submission fails, save skill locally. User can sync manually via settings.
