---
name: cli-skills
description: Master project initialization, context orchestrator, and skill manager. Automatically detects empty or existing project directories, conducts grilling interviews using /grill-me protocol, generates 6 essential project specification files (PRD.md, Architecture.md, Rules.md, Phases.md, Design.md, Memory.md), creates/checks primary AI entry point tracker files (GEMINI.md for Gemini/AGY or CLAUDE.md for Claude Code), orchestrates caveman, ponytail, bluf, and karpathy-guidelines, and supports /cli-final (/cli-skills:final) to clean up spec files upon project completion for GitHub release. Use this skill whenever starting a new project, resuming an existing codebase, or invoking /cli-skills or /cli-skills:final.
---

# CLI Skills (`cli-skills`) — Master Project Orchestrator

Orchestrate project initialization, context preservation, specification generation, skill creation, token-optimized execution, and final GitHub release cleanup using integrated sub-skills (`project-spec`, `grill-me`, `bluf`, `caveman`, `ponytail`, `karpathy-guidelines`, `skill-creator`, `cli-final`).

---

## 🛠️ Core Execution Mindset & Integrated Skills Roster

1. **`project-spec` Generation**: At project start, generates the 6 essential specification files:
   - **`PRD.md`**: Product Requirements & Personas
   - **`Architecture.md`**: Tech Stack, Data Schemas, & Directory Map
   - **`Rules.md`**: AI Constraints & Engineering Standards
   - **`Phases.md`**: Milestone Breakdown & Task List
   - **`Design.md`**: UI/UX System & Design Guidelines
   - **`Memory.md`**: Historical Decisions & Progress Log
2. **Primary AI Entry Point (`GEMINI.md` / `CLAUDE.md`)**: Generates the root context tracker (`GEMINI.md` for Google Antigravity / Gemini CLI or `CLAUDE.md` for Claude Code) that the AI reads first upon launch. Contains mandatory directives forcing the AI to read all 6 `project-spec` files to prevent goal drift and auto-update specs whenever changes occur.
3. **`cli-final` (`/cli-skills:final`)**: When a project is completed, `cli-final` cleans up and deletes all temporary specification files (`PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`, `GEMINI.md`, `CLAUDE.md`), verifies build integrity, and stages a clean codebase ready for GitHub push.
4. **`caveman` Mode**: Strips unnecessary LLM filler, polite fluff, and repetitive summaries to drastically reduce token usage and API costs.
5. **`ponytail` Mindset**: Makes your AI agent think like the laziest senior dev in the room — prioritizing standard library solutions, YAGNI ("You Aren't Gonna Need It"), zero-bloat code, and realizing that *the best code is the code you never wrote*.
6. **`bluf` Protocol**: Enforces Bottom Line Up Front response format for immediate, executive clarity.
7. **`karpathy-guidelines`**: Enforces Andrej Karpathy's core engineering principles — surgical changes, surfacing hidden assumptions, defining verifiable success criteria, and preventing LLM code overcomplication.
8. **`/grill-me` Interview**: Grills the user with targeted questions whenever an empty folder or unclear requirement is detected.
9. **`skill-creator`**: Creates, benchmarks, evaluates, and optimizes new or existing skills dynamically.

---

## 🔄 Workflow Logic

```
                    [Project Directory Check]
                                |
             +------------------+------------------+
             |                                     |
       [Empty Directory]                  [Existing Files]
             |                                     |
   1. Interactive `/grill-me` Interview   1. Read GEMINI.md / CLAUDE.md & Memory.md
   2. Generate 6 `project-spec` Files     2. Read all 6 `project-spec` files
      (PRD, Arch, Rules, Phases,          3. Restore Active Phase Context
       Design, Memory)                    4. Activate `caveman`, `ponytail`,
   3. Activate `caveman` + `ponytail`        `karpathy-guidelines`, & `bluf`
   4. Create `GEMINI.md` / `CLAUDE.md`    5. Resume Building Step
      Entry Point Tracker                               |
   5. Begin Phase 1 Execution                           v
                                          [Upon Project Completion]
                                                        |
                                          Trigger `/cli-skills:final`
                                          (Deletes spec files & prepares
                                           clean GitHub release push)
```

---

## 1. Directory Detection Protocol

Upon activation, inspect the root workspace:

1. **Empty Directory or Ambiguous Context (New Project Setup)**:
   - **Step 1: `/grill-me` Interview**: Conduct an interactive interview to grill the user on project goals, target users, tech stack, and key trade-offs until ambiguity is zero.
   - **Step 2: `project-spec` Generation**: Create all 6 core specification files (`PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`).
   - **Step 3: Primary Entry Point Creation**: Generate `GEMINI.md` (for AGY/Gemini CLI) or `CLAUDE.md` (for Claude Code) as the root memory file that the AI reads first. Embed strict directives commanding the AI to read all 6 `project-spec` files to prevent goal drift and to update spec files whenever architectural or requirement changes are made.
   - **Step 4: Mode Activation**: Enable `caveman` (compressed token mode), `ponytail` (minimalist, YAGNI implementation), `bluf` (Bottom Line Up Front), and `karpathy-guidelines` (surgical, verifiable code edits).
   - **Step 5: Execution**: Begin Phase 1 development following `karpathy-guidelines` + `caveman` + `ponytail` + `bluf`.

2. **Populated Directory (Existing Project Resume)**:
   - **Step 1: State Recovery**: Read `GEMINI.md` or `CLAUDE.md`, then immediately read `Memory.md`, `PRD.md`, `Architecture.md`, and `Phases.md` to restore full project context and prevent drift.
   - **Step 2: Verification**: Verify file integrity and identify active phase tasks.
   - **Step 3: Mode Activation**: Enable `caveman`, `ponytail`, `karpathy-guidelines`, and `bluf` modes immediately.
   - **Step 4: Resume Building**: Pick up execution right where it left off. If any requirements or code structures change during execution, update the relevant `project-spec` files immediately.

3. **Project Completion (`/cli-skills:final` or `/cli-final`)**:
   - **Step 1: Verify Completion**: Confirm all phase tasks in `Phases.md` are 100% completed.
   - **Step 2: Delete Spec Files**: Delete `PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`, `GEMINI.md`, and `CLAUDE.md`.
   - **Step 3: Build Verification**: Verify build/tests pass cleanly.
   - **Step 4: GitHub Push**: Stage clean files and prepare Git commit for release.

---

## 2. `GEMINI.md` / `CLAUDE.md` Entry Point Template

Create or update `GEMINI.md` or `CLAUDE.md` in the project root:

```markdown
# AI Project Entry Point & Context Tracker

> 🚨 **MANDATORY AI DIRECTIVE**:
> 1. You MUST read all 6 `project-spec` files (`PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`) upon starting or resuming work to prevent goal drift.
> 2. Whenever any project requirement, architecture design, or milestone changes during development, you MUST update the corresponding `project-spec` file immediately so the context is permanently retained.

## Project Overview
* **Name**: [Project Name]
* **Current Phase**: [e.g., Phase 1 - Core Setup]
* **Modes Active**: `grill-me` (COMPLETED), `caveman` (ON), `ponytail` (ON), `karpathy-guidelines` (ON), `bluf` (ON), `skill-creator` (AVAILABLE)

## Specification Verification Checklist
- [x] PRD.md (Requirements & Personas)
- [x] Architecture.md (Tech Stack & Folder Structure)
- [x] Rules.md (AI Constraints & Standards)
- [x] Phases.md (Milestone Breakdown)
- [x] Design.md (UI/UX System)
- [x] Memory.md (Progress History)

## Active Context & Next Action
* **Last Completed Task**: [Task description]
* **Next Active Task**: [Immediate next task]
```
