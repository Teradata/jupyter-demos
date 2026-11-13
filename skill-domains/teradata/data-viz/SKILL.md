---
name: storytelling-viz
description: Story-first Plotly workflow for turning a dataset into a polished interactive visualization or a complete multi-panel dashboard, with local review artifacts. Use this skill when the user wants a concise, intuitive chart or dashboard with a clear takeaway, plus final `index.html` and `preview.html`, without website publishing work.
---

# Storytelling Viz

Use this skill when the task is about choosing, building, and refining a visualization itself, whether that is one chart or a complete dashboard.

## Portability Note

`SKILL.md` is the canonical cross-tool instruction file for this skill.

- Keep the core workflow and output contract here so the skill stays usable in both Codex and Claude Code.
- Keep tool-specific metadata, discovery config, or UI-only behavior outside this file when possible.
- If the repo includes example artifacts, treat them as demonstrations of the current workflow, not as an alternative source of truth.

The goal is to produce one Plotly visualization (or, in dashboard mode, a set of coordinated panels) that is:

- story-telling
- intuitive
- concise

The default output of this skill stops at reusable local artifacts:

- `index.html`
- `preview.html`
- 2-3 insight bullets

Do not take on website publishing, repo posting, PR creation, or markdown post editing in this skill. If the user wants the visualization inserted into a site or blog post, use a separate publishing skill.

## Skill Promise

Unless the user explicitly asks otherwise, optimize for:

- one chart by default; a dashboard only in dashboard mode
- one main takeaway, not a bundle of loosely related points
- comprehension without hover
- minimal interaction that adds value
- concise copy and restrained styling

Keep the honesty checks strict. The chart should feel clear and editorial, not generic, but never at the cost of comparability or truthfulness.

## When to Use This Skill

Use this skill when the user:

- provides a dataset and wants chart recommendations
- wants an embeddable interactive visualization in `Plotly.js`
- wants help matching an established visual style
- wants iterative draft-and-feedback refinement
- wants local review artifacts before publishing anywhere
- wants a complete dashboard of several related views (see Dashboard Mode)

Do not use this skill when the main request is about updating a website repo, Jekyll post, or GitHub Pages embed.

## Fast Path

Follow this default sequence:

1. Identify the data source and inspect the dataset shape.
2. Check comparability and chart logic.
3. Write the one-sentence story the viewer should remember.
4. Recommend one default chart and one fallback (per panel in dashboard mode).
5. Ask the user to confirm the recommended direction before building, even when the choice seems straightforward.
6. Build the first draft in `Plotly.js`.
7. Run rendered visual QA on desktop and, when needed, a narrower layout.
8. Deliver the local artifacts, insight bullets, and any material caveats.

Keep the user in the loop at chart selection and at least once during refinement.

## Non-Negotiable Tests

Before moving from one stage to the next, apply these tests:

- `Story test`: the main takeaway can be stated in one sentence
- `Intuition test`: a first-time viewer can understand the main claim quickly without hover
- `Concision test`: if an element can be removed without hurting meaning, remove it
- `Honesty test`: the framing still matches the actual data, scope, and caveats

If the visualization fails one of these tests, simplify the chart, the copy, or both.

## Dataset Review

Before proposing a chart:

- confirm the dataset source and source URL or citation
- identify row count, column names, and data types
- classify each quantitative field by meaning when relevant: cost, income, rate, stock, flow, share, index, or timepoint
- detect time, geography, ranking, composition, distribution, and relationship fields
- check whether the compared values are actually comparable across year, geography level, currency basis, inflation basis, and methodology
- check whether the data supports one strong message or only several weaker ones
- note obvious cleaning issues that affect chart design
- flag concept mismatches early, such as mixing costs with income or combining stock and flow metrics in one direct ranking
- if the source is an article rather than a direct downloadable table, verify which subsection, embedded table, or figure the chart is actually using
- check whether the article headline, prose callouts, and ranking table use the same numbers
- if article prose and table values disagree, choose one authoritative subsection and say so in visible copy

If the user has not provided a data source, stop and ask for it before finalizing the visualization. Do not fabricate, infer, or omit the source when the origin of the data is unknown.

Treat this as mandatory, not best-effort:

- do not recommend a final chart, write story framing, or build the visualization until the user has provided the data source or clearly identified the source file/table being used
- if the user shares only a raw file without source context, ask for the underlying publisher, organization, dataset name, URL, or other citation before proceeding beyond exploratory inspection
- if the source cannot be established, stop rather than producing a stakeholder-facing artifact with an unverified origin

If key fields are not comparable, do not quietly proceed with a strong claim. Instead explicitly do one of the following:

- narrow the scope to a valid subset
- reframe the chart as a snapshot with caveats
- recommend a different chart or story angle
- stop and ask for clarification if the issue is central

## Chart Logic Audit

Before building any chart that depends on filtering, ranking, aggregation, or reconstruction, state the logic explicitly.

At minimum, verify:

- what exactly is being ranked, grouped, or connected
- what the comparison universe is
- whether the view uses the full source table or a filtered cohort
- whether ranks are source-provided, recomputed, or inferred
- whether geography is exact, centroid-based, approximate, or reconstructed
- whether the chart uses raw values, transformed values, or derived metrics

If the chart relies on derived structure, disclose that in visible copy.

## Recommendation Format

When recommending charts, always provide one recommendation plus one fallback, then explicitly ask the user to confirm before you build. Only present more options when the user explicitly wants exploration.

Always provide:

- `Recommended chart`: the default choice
- `Why it fits`: the structural reason it matches the data and story
- `Why not the obvious alternative`: the main reason a nearby chart form is weaker
- `Interaction`: the minimum useful interaction, or `none`
- `Fallback`: one credible alternative when needed
- `Draft title`: a concise title candidate
- `Draft takeaway`: the one-sentence message
- `Comparability note`: any caveat that materially affects interpretation, or `none`

End the recommendation block with a direct confirmation ask, for example:

- `Confirmation ask`: `If you want, I'll proceed with the recommended chart. If you'd rather use the fallback, say so before I build.`

Keep recommendations concrete and brief.

## Plotly Rules

Use `Plotly.js` by default. Prefer a single polished chart unless the request is for a dashboard (see Dashboard Mode) or comparison across facets is central to the story.

Prioritize:

- clear ranking or comparison
- readable labels
- restrained color
- titles and subtitles that carry the narrative
- hover that adds detail, not essential meaning
- stable layouts across desktop and mobile
- direct labels or annotations when they beat legend hunting
- one label system per mark when possible; avoid stacking bar-end labels, marker accents, and callout text on the same values
- when direct value labels are present, treat them as the primary in-plot text and move secondary story callouts into the subtitle, footer, or surrounding layout unless there is clear empty space for both
- prefer structural fixes over nudging: reduce labels, separate commentary from values, or move narrative notes outside the plotting area before adjusting pixel offsets

Avoid:

- unnecessary animation
- overloaded controls
- excessive traces
- decorative marker layers that make bar endpoints or label alignment feel ambiguous
- annotation boxes that compete with direct labels on the same row or endpoint
- repeated manual text nudging as the main overlap strategy
- default Plotly styling left unrefined
- dense dashboards with no visual hierarchy
- pie charts or donut charts
- generic chart-library aesthetics

Use `D3.js` only if the requested design needs custom geometry or interactions that Plotly cannot support cleanly.

For `preview.html` wrappers that embed `index.html` in an iframe:

- prefer content-driven iframe sizing via `postMessage`
- avoid large fixed `min-height` values that can leave obvious blank space below the visualization
- if a fallback height is needed for first paint, keep it conservative and let the runtime resize replace it quickly
- when reporting iframe height from the embedded chart, measure the actual visualization container or panel, not `document.documentElement.scrollHeight`
- guard against resize feedback loops where the child measures the iframe-expanded document and causes the parent to grow again
- prefer stable height reporting after render and on container resize, for example via `ResizeObserver`, instead of repeatedly measuring the full page during window scroll/reflow
- visually inspect the wrapper itself, not just the embedded chart, for dead space below the artifact
- treat the wrapper header as part of the visual composition, not as leftover page chrome
- avoid hero layouts that trap the headline in a narrow left column while leaving a large inactive area on the right
- when the canvas is wide, prefer a full-width editorial intro: one headline paragraph and one supporting paragraph that use the available width intentionally
- if a split layout is used, each column must carry meaningful visual weight; do not create decorative side columns that read as empty space
- if the top section still looks lopsided in the rendered view, widen the text block or collapse it into a single-column intro before delivery

## Story Framing

Choose the chart only after identifying the sentence the viewer should remember.

For stakeholder-facing or presentation-ready outputs:

- lead with the takeaway, not with chart mechanics
- assume the chart should be intuitive enough to read without a how-to subtitle
- use the subtitle and notes to sharpen the story, not to explain the implementation
- do not include process language about the visualization itself, such as review workflow, chart simplification decisions, or tool choices, unless that context is required to prevent misreading
- keep caveats concise and subordinate unless they are essential to avoid a misleading claim
- prefer source and methodology details in a short footer line rather than in the main headline block
- if the chart still needs a long explanatory paragraph to be understood, simplify the visual or framing instead of adding more copy
- when both `preview.html` and `index.html` have visible headers, do not make them carry the same editorial headline
- prefer a split of roles: `preview.html` carries the main takeaway and `index.html` uses a shorter functional title plus a concise orienting subtitle
- if the same headline appears both outside and inside the visualization frame, compress one of them until the duplication is gone
- inside the visualization frame, avoid a second oversized hero block; let the chart area take priority quickly

Load [references/style-guide.md](references/style-guide.md) when you need detailed style rules.

## Framing Modes

After choosing the chart form, choose a framing mode before coding:

- `Analytic clean`: restrained, minimal, mostly neutral framing
- `Editorial`: stronger hierarchy, topic-shaped palette, and direct annotations
- `Atmospheric`: editorial plus a scene-like background or surface treatment tied to the subject

Default to `Editorial` for story-driven work. Use `Atmospheric` only when the user explicitly wants a more art-directed or creative result.

When the user explicitly wants a more creative or less standard-chart feel:

- rework the full visual frame, not just the mark type
- make the dominant pattern visible before hover through direct labeling, annotations, or framing copy
- prefer one striking idea per chart rather than stacking multiple decorative ideas
- keep the result editorial rather than ornamental

In these creative passes, preserve the underlying honesty checks:

- the styling must still support one clear takeaway
- annotations should point at actual evidence in the plotted data
- the visual metaphor must not imply a metric the chart does not measure
- mobile fallbacks should simplify the annotation scheme rather than compress the full desktop treatment

## Complexity Limits

By default, keep a single-chart artifact within these limits (dashboard limits are in Dashboard Mode):

- one primary chart
- one main interaction family
- one headline
- one subtitle
- one note or source area
- only as many annotations as are needed to make the story obvious
- if direct value labels already carry the comparison, move interpretive callouts into the subtitle, footer, or surrounding `preview.html` instead of adding more in-plot text
- if the chart needs both direct values and interpretive commentary, use separate zones for them: values in the plot, commentary in a note strip, subtitle, side panel, or surrounding wrapper
- when two text systems target the same marks, remove one rather than keeping both and attempting incremental overlap fixes

If a chart needs multiple filters, many traces, or a long reading guide to make sense, the design is probably too complex for this skill's default goal.

## Dashboard Mode

Use dashboard mode when the user asks for a dashboard, or when the story needs several related views that cannot be read as one chart. Otherwise stay in single-chart mode. If it is unclear which the user wants, ask at the recommendation step.

Structure, top to bottom:

- one dashboard headline: the overall takeaway in one sentence
- optional KPI row: at most 4 stat values, each with a label and a source
- 2–6 panels, each with one primary chart, a compact title, and a one-line takeaway
- one shared footer with the data-as-of date and source

Panel rules:

- each panel answers one question
- one panel is the main story; the others support it
- panels do not repeat each other's headline
- every panel passes the Non-Negotiable Tests on its own, and the dashboard passes them as a whole
- panels that share an axis or scale must use the same metric kind, unit, and period; otherwise label the difference or split the panels
- no pie or donut charts in any panel

Consistency rules:

- one palette, one font scale, and one spacing system across all panels
- the same date range and filters across panels, unless a panel's title states its own scope
- the same number formats (units, decimals, currency) across panels
- when panels come from different sources, the footer or panel note names each source

Interaction rules:

- shared filters are allowed only when every panel responds to them; a filter that changes some panels and not others is misleading and must be removed or labelled
- at most one main interaction family, as in single-chart mode

Layout and responsiveness:

- desktop: KPI row, then panels in a grid of at most 3 columns, with no empty grid cells
- narrow/mobile: stack panels in one column, main panel first, and simplify labels as described in Visual QA

Output:

- `index.html` is the full dashboard; `preview.html` frames it with the headline and caveats
- insights are 2–3 bullets for the whole dashboard, not per panel
- caveats appear per panel only where they materially affect interpretation

Template and spec compliance:

- if the user supplies a layout template or visual spec, follow its structure, order, and styling exactly
- change only what the user asks for; if a template conflicts with these rules, report the conflict rather than silently overriding it

Visual QA in dashboard mode: check every panel and the whole dashboard at desktop and mobile widths, and confirm no panel is clipped, overlapping, or empty.

## Build Guidance

Load [references/plotly-patterns.md](references/plotly-patterns.md) when building the visualization. Use those patterns for:

- layout defaults
- hover templates
- annotations
- responsive embed wrappers
- export structure

## Writing Voice

For `preview.html` wrappers and any explanatory copy generated by this skill:

- do not use first-person framing such as `I`, `me`, `my`, or `our` unless the user explicitly asks for it
- prefer neutral section titles such as `Visualization` instead of `My Visualization`
- describe the work as the visualization, chart, or output rather than implying sole personal authorship
- when authorship context matters, use neutral wording such as `AI-assisted` or `generated for review`
- treat `preview.html` as stakeholder-facing by default: do not mention design iteration, review status, or why a visual styling choice was made unless it materially affects interpretation
- use `preview.html` for the editorial framing when both wrapper and chart have headings; avoid repeating the same headline inside `index.html`

For text inside the visualization itself:

- write as if the artifact will be shown directly to stakeholders, not as if it is part of a design discussion
- avoid sentences that explain the chart construction unless that information is required to prevent misreading
- prefer a strong headline, one concise narrative subtitle, and at most a short interpretive note
- keep data source text direct and minimal at the bottom of the visualization
- reserve longer assumptions, caveats, and process notes for the surrounding `preview.html` when needed rather than the main chart frame
- when the chart sits inside a stakeholder-facing `preview.html` wrapper, prefer a compact chart title that describes what is being compared, rather than repeating the wrapper’s editorial takeaway

Use this compression check on all copy:

- if the title, subtitle, and takeaway all say the same thing, compress them
- if a sentence only explains what the viewer can already see, cut it
- if copy is needed mainly to explain the chart mechanics, simplify the chart
- if a sentence is about how the visualization was made rather than what the audience should learn from it, cut it or move it out of the artifact

Do not generate publish-ready markdown, PR instructions, or website repo edits in this skill unless the user explicitly overrides the scope.

## Interaction Policy

This is a semi-automated process. Do not skip confirmation when:

- multiple chart types are genuinely plausible
- the narrative angle is unclear
- the user may prefer a more exploratory or more story-driven version
- the dataset has comparability problems that require reframing
- the strongest possible headline depends on a caveat or a debatable metric choice
- the user has not said whether they want a single chart or a dashboard

It is acceptable to proceed without confirmation only when the user explicitly says to pick the best default and continue.

## Heuristics

Use these defaults:

- time series: line chart, area chart, or slope-style comparison
- ranking: sorted horizontal bar chart or dot plot
- geography: choropleth or symbol map if geography is central and data quality supports it
- distribution: histogram, box plot, violin plot, or ridgeline-like substitute
- relationship: scatter plot with optional trend line
- composition: stacked bars only when category count stays readable
- story-rich niche cases: consider custom dot arrangements, dumbbells, bump charts, mirrored bars, small multiples, or timeline layouts when the structure strengthens the message

Prefer the simplest chart that reveals the story cleanly.

## Visual QA

Before delivery, inspect the actual rendered chart output, not just the code.

- review the final `index.html` or `preview.html` in a rendered state
- inspect the chart region itself, not only the wrapper header or surrounding page copy
- check at least one desktop-width view and one narrower/mobile-like view when label density is nontrivial
- look specifically for clipped text, overlapping annotations, truncated labels, crowded headers, and awkward empty space
- if using an iframe wrapper, also check for excess blank area caused by wrapper height rules or embed sizing fallbacks
- if the blank area grows while scrolling or after resize, treat that as an embed-sizing bug and fix the height reporting logic before delivery
- check whether value labels clearly belong to the marks they describe; if a secondary marker or accent makes the endpoint feel misaligned, remove the accent before nudging labels
- if annotations or labels overlap, first remove the competing text layer with lower priority; only then consider repositioning the remaining text
- do not allow both a direct value label and a narrative callout to occupy the same row unless the rendered view shows clear separation at both desktop and mobile widths
- if overlap persists after one cleanup pass, remove the lower-priority in-plot annotation and move that message into the subtitle, footer, or `preview.html`
- on narrow screens, prefer switching to a simpler mobile fallback state rather than preserving the full desktop annotation scheme
- do not treat passing syntax checks as sufficient visual QA

When reporting completion, explicitly state which of these happened:

- browser preview inspected
- screenshot reviewed
- user-provided screenshot reviewed
- visual QA still incomplete

Do not imply rendered QA happened if only syntax and file checks were run.

## Output Contract

Unless the user asks otherwise, the final deliverable should include:

- the final `index.html` visualization artifact (in dashboard mode, the full dashboard page)
- a local `preview.html` wrapper for review
- a short title
- 2-3 insight bullets
- any assumptions or caveats that affect interpretation
- an explicit linked data source in the visualization artifact or directly below it
- a short text summary or fallback that makes the chart understandable without hover

If working in a repo, prefer this output structure:

- `viz/project-name/` as the self-contained artifact folder
- `viz/project-name/index.html` for the visualization
- `viz/project-name/preview.html` for the local review wrapper
- `viz/project-name/source-data.ext` when the user provided a local source file and copying it into the project folder is appropriate
- choose a concise slug for `project-name` that matches the story or dataset
- keep `preview.html` and `index.html` sibling files unless there is a strong reason not to

When delivering, structure the response in this order:

1. `Story`: the one-sentence takeaway
2. `Artifact`: what was produced
3. `Insights`: 2-3 bullets
4. `Caveats`: only the caveats that materially affect interpretation
5. `Source`: the explicit linked data source
6. `QA status`: what rendered review actually happened

## Final Quality Check

Before delivery, verify:

- all plotted metrics are the same kind of thing, or the framing explicitly explains why they are mixed
- the title, subtitle, and annotations remain true under the actual filtered dataset
- any highlighted example named in the copy is visibly labeled or annotated in the chart
- major comparability caveats are visible in subtitle, note, or source text rather than hidden in hover
- the rendered chart has been visually inspected for clipping, overlap, and spacing issues
- each mark has a clear text hierarchy, with no competing in-plot elements describing the same value
- interpretive commentary does not compete spatially with direct value labels; if both are needed, they occupy separate zones
- wrapper notes and surrounding copy still match the final chart after any visual simplification
- the chart logic is explicitly correct: ranking universe, cohort, aggregation, and transformations all match the copy
- the data source is explicitly shown and linked in the final visualization output
- the chart can be understood without hover alone
- in dashboard mode, every panel and the dashboard as a whole pass the Dashboard Mode rules
- the main in-chart text tells the story first and does not read like methodology documentation
