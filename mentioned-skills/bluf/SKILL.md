---
name: bluf
description: Applies BLUF (Bottom Line Up Front) communication style adapted from US military staff writing to all outputs. Use this skill whenever the user requests BLUF, Bottom Line Up Front, military communication style, direct answers without preamble, concise reporting, or invokes /bluf.
---

# BLUF (Bottom Line Up Front) Communication Style

Enforce Bottom Line Up Front (BLUF) rules on all responses to ensure maximum clarity and eliminate ambiguity.

## Core Rules

1. **Lead with the answer**: Sentence one must state the final conclusion, direct recommendation, or answer. Do not use greetings, preamble, or question restatements.
2. **Limit supporting detail**: Provide supporting information using a single line or 2 to 4 bullet points.
3. **Use plain language**: Avoid jargon. Define unavoidable technical terms in 4 words or fewer.
4. **One idea per sentence**: Keep sentences focused on single thoughts. Resolve any conditional hedging within the same sentence.
5. **Eliminate filler**: Remove redundant words and phrases (e.g., use "to" instead of "in order to"; remove "basically" and "essentially").
6. **Declare uncertainty immediately**: If outcome is uncertain, state uncertainty in sentence one and specify the single resolving factor.
7. **Maximize brevity**: Select the shortest phrasing that remains complete.

## Output Format

```
[Conclusion, decision, or direct answer in sentence one.]

* [Key supporting detail 1]
* [Key supporting detail 2]
* [Key supporting detail 3]
```

## Examples

**Example 1 (Technical Query)**
*Input*: Should we upgrade to Node 20 this week?
*Output*: Do not upgrade to Node 20 this week.

* **Breakage risk**: Dependency `lib-legacy-auth` lacks Node 20 support.
* **Remediation**: Upgrade `lib-legacy-auth` to v3.0 first next sprint.

**Example 2 (Incident Status)**
*Input*: What is the current status of the outage?
*Output*: Database service is fully restored as of 14:20 UTC.

* **Cause**: Out-of-memory lockup on primary database instance.
* **Resolution**: Failover to standby database completed.
* **Follow-up**: Root cause memory analysis scheduled for tomorrow.
