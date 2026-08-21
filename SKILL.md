---
name: gemini-skill
description: Master project initialization, context orchestrator, and skill manager. Automatically detects empty or existing project directories, conducts grilling interviews using /grill-me protocol, orchestrates project-spec, bluf, caveman, ponytail, karpathy-guidelines, and skill-creator skills without duplication, creates/checks GEMINI.md, and resumes active phase development with surgical token-efficient execution. Use this skill whenever starting a new project, resuming an existing codebase, initializing Gemini workflow, or invoking /gemini-skill.
---

# Gemini Master Project Orchestrator (`gemini-skill`)

Orchestrate project initialization, context preservation, specification generation, skill creation, and token-optimized execution using integrated sub-skills (`project-spec`, `grill-me`, `bluf`, `caveman`, `ponytail`, `karpathy-guidelines`, `skill-creator`).

---

## Integrated Skills Roster (Non-Redundant)

1. **`/grill-me`**: Grills user with targeted questions whenever an empty folder or unclear requirement is detected.
2. **`project-spec`**: Generates modular 6-file documentation package (`PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`).
3. **`bluf`**: Enforces Bottom Line Up Front output structure.
4. **`caveman`** (+ `cavecrew`, `caveman-review`): Strips filler tokens while preserving technical accuracy.
5. **`ponytail`** (+ `ponytail-audit`, `ponytail-review`): Enforces lazy, minimal, stdlib-first solutions without bloat.
6. **`karpathy-guidelines`**: Enforces surgical changes, surfaces hidden assumptions, defines verifiable success criteria, and prevents LLM overcomplication.
7. **`skill-creator`**: Creates, benchmarks, evaluates, and optimizes new or existing skills dynamically.

---

## Workflow Logic

```
                    [Project Directory Check]
                                |
             +------------------+------------------+
             |                                     |
       [Empty Directory]                  [Existing Files]
             |                                     |
   1. Interactive `/grill-me` Interview   1. Read GEMINI.md & Memory.md
   2. Trigger `project-spec`             2. Restore Active Phase Context
   3. Activate `bluf`, `caveman`         3. Activate `caveman`, `ponytail`,
   4. Apply `karpathy-guidelines`           `karpathy-guidelines`, & `bluf`
   5. Create `GEMINI.md` Tracker         4. Resume Building Step
```

---

## 1. Directory Detection Protocol

Upon activation, inspect the root workspace:

1. **Empty Directory or Ambiguous Context (New Project)**:
   - **Step 1: `/grill-me` Interview**: Conduct an interactive interview to grill the user on project goals, target users, tech stack, and key trade-offs until ambiguity is zero.
   - **Step 2: `project-spec` Generation**: Generate all 6 spec files (`PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`).
   - **Step 3: Mode Activation**: Enable `bluf` (Bottom Line Up Front), `caveman` (compressed token mode), `ponytail` (minimalist, YAGNI implementation), and `karpathy-guidelines` (surgical, verifiable code edits).
   - **Step 4: `GEMINI.md` Tracker**: Generate `GEMINI.md` to track verification state.
   - **Step 5: Execution**: Begin Phase 1 development following `karpathy-guidelines` + `caveman` + `ponytail`.

2. **Populated Directory (Existing Project)**:
   - **Step 1: State Recovery**: Read `GEMINI.md`, `Memory.md`, `PRD.md`, and `Phases.md` to restore full project context.
   - **Step 2: Verification**: Verify file integrity and identify active phase tasks.
   - **Step 3: Mode Activation**: Enable `caveman`, `ponytail`, `karpathy-guidelines`, and `bluf` modes immediately.
   - **Step 4: Resume Building**: Pick up execution right where it left off.

---

## 2. `GEMINI.md` Template

Create or update `GEMINI.md` in the project root:

```markdown
# Gemini Project Context & Verification Tracker

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
