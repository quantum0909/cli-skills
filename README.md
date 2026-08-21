# CLI Skills (`cli-skills`)

[![Agent Skill Standard](https://img.shields.io/badge/Agent%20Skill-Standard-blue.svg)](https://github.com/anthropics/skills)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**`cli-skills`** is a unified global AI agent skill suite and master project orchestrator compatible across **Claude Code**, **Google Antigravity / Gemini CLI**, **Open Code**, **Cursor**, **Open Interpreter**, and standard MCP/Agent SDK platforms.

It includes **`cli-skills`** (the master project initialization and context orchestrator) alongside **`mentioned-skills/`** (a curated collection of 18 token-efficient engineering skills, including **`cli-final`**).

---

## 💡 What `cli-skills` Does

### 1. Project Initialization & Context Tracking (`/cli-skills`)

When executed at the start of a project (or when resuming an existing codebase):

- **Initializes Core Project Specifications**:
  Conducts an interactive requirement interview (`/grill-me`) and automatically generates the 6 essential specification files:
  - **`PRD.md`**: Product Requirements & Personas
  - **`Architecture.md`**: Tech Stack, Data Schemas, & Directory Map
  - **`Rules.md`**: AI Coding Constraints & Quality Standards
  - **`Phases.md`**: Milestone Breakdown & Task Tracking
  - **`Design.md`**: UI/UX Design System Guidelines
  - **`Memory.md`**: Historical Context & Architectural Decisions Log

- **Creates Primary Entry Point File (`GEMINI.md` / `CLAUDE.md`)**:
  Generates `GEMINI.md` (for AGY / Gemini CLI) or `CLAUDE.md` (for Claude Code) as the root memory file that the AI assistant reads first upon launch. Embedded within this file are strict directives:
  - 🚨 **Mandatory Reading**: Directs the AI to read all 6 `project-spec` files upon start so the model never drifts from the primary goal.
  - 🚨 **Auto-Updating Context**: Commands the AI to update the `project-spec` files immediately whenever code structures, architectural decisions, or user requirements change so context is retained permanently.

- **Cuts Token Usage with `caveman`**:
  Activates token compression mode to strip unnecessary AI conversational fluff, polite preamble, and repetitive summaries, saving up to 60%+ in input/output token costs.

- **Enforces Pragmatic Senior Engineering with `ponytail`**:
  Adopts the mindset of the laziest senior developer in the room: *"The best code is the code you never wrote."* It enforces zero-bloat, standard-library-first implementations, YAGNI principles, and strict surgical changes.

- **Enforces Direct Communication with `bluf`**:
  Applies the Bottom Line Up Front standard so responses get straight to the point without waffle.

- **Applies Surgical Engineering Discipline with `karpathy-guidelines`**:
  Follows Andrej Karpathy's core coding principles: making surgical code edits, surfacing hidden assumptions early, defining verifiable success criteria before building, and preventing LLM code overcomplication.

---

### 2. Project Completion & GitHub Release Cleanup (`/cli-skills:final` or `/cli-final`)

When your project is 100% completed and ready for production release, run:

```text
/cli-skills:final
```

or

```text
/cli-final
```

**`cli-final`** will automatically:
1. Verify that all phase milestones are 100% completed.
2. Delete all temporary specification files (`PRD.md`, `Architecture.md`, `Rules.md`, `Phases.md`, `Design.md`, `Memory.md`, `GEMINI.md`, `CLAUDE.md`).
3. Audit `.gitignore` and run build/test verification.
4. Stage a clean production repository ready to be pushed to GitHub.

---

## ⚡ Global Installation

Install all skills globally for **Claude Code**, **Google Antigravity / Gemini CLI**, **Open Code**, and **Open Agent Standard** in a single step:

### Option 1: Automatic Global Installer Script

```bash
# Clone repository
git clone https://github.com/quantum0909/cli-skills.git
cd cli-skills

# Run global installer
./install.sh
```

Running `./install.sh` automatically registers and installs `cli-skills` and all `mentioned-skills/` globally to:
- 🌐 `~/.gemini/skills/cli-skills/` (Google Antigravity & Gemini CLI)
- 🌐 `~/.claude/skills/cli-skills/` (Claude Code)
- 🌐 `~/.opencode/skills/cli-skills/` (Open Code)
- 🌐 `~/.agents/skills/cli-skills/` (Open Agent Standard)

### Option 2: Manual Global Copy

```bash
# Global install for Gemini CLI / Antigravity
mkdir -p ~/.gemini/skills/cli-skills
cp -r SKILL.md ~/.gemini/skills/cli-skills/
cp -r mentioned-skills/* ~/.gemini/skills/

# Global install for Claude Code
mkdir -p ~/.claude/skills/cli-skills
cp -r SKILL.md ~/.claude/skills/cli-skills/
cp -r mentioned-skills/* ~/.claude/skills/

# Global install for Open Code
mkdir -p ~/.opencode/skills/cli-skills
cp -r SKILL.md ~/.opencode/skills/cli-skills/
cp -r mentioned-skills/* ~/.opencode/skills/
```

---

## 🚀 Repository Structure

```text
cli-skills/
├── SKILL.md                  # Main Master Skill Specification (Installed as cli-skills)
├── install.sh                # Automatic Global Installer Script
├── README.md                 # Documentation & Global Setup Guide
├── LICENSE                   # MIT License
├── .gitignore                # Git ignore rules
├── evals/                    # Evaluation & Verification Benchmarks
│   ├── evals.json
│   └── description_evals.json
└── mentioned-skills/         # Subfolder for all 18 mentioned sub-skills
    ├── bluf/                 # BLUF (Bottom Line Up Front)
    ├── cavecrew/             # Cavecrew subagent delegation
    ├── caveman/              # Token-compressed communication
    ├── caveman-commit/       # Caveman Git commit messages
    ├── caveman-compress/     # Memory compression
    ├── caveman-help/         # Caveman help guide
    ├── caveman-review/       # Caveman code review
    ├── caveman-stats/        # Token savings tracking
    ├── cli-final/            # Project completion & spec file cleanup skill
    ├── karpathy-guidelines/  # Surgical edits & Karpathy principles
    ├── ponytail/             # Minimal, stdlib-first framework
    ├── ponytail-audit/       # Over-engineering audit
    ├── ponytail-debt/        # Technical debt ledger
    ├── ponytail-gain/        # Impact scoreboard
    ├── ponytail-help/        # Ponytail help guide
    ├── ponytail-review/      # Complexity review
    ├── project-spec/         # Modular 6-file project specification
    └── skill-creator/        # Dynamic skill creation & benchmarking
```

---

## 🔗 Official Repositories & Skill Sources

Below are the official GitHub links and origins for skills included in `cli-skills`:

| Skill | Purpose | Official Source / Repository Link | Path |
| :--- | :--- | :--- | :--- |
| **`cli-skills`** | Master project orchestrator & context manager | 🔗 [quantum0909/cli-skills](https://github.com/quantum0909/cli-skills) | `SKILL.md` |
| **`cli-final`** | Project completion & spec file cleanup | 🔗 [quantum0909/cli-skills](https://github.com/quantum0909/cli-skills) | `mentioned-skills/cli-final` |
| **`caveman`** | Token-compressed technical communication suite | 🔗 [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | `mentioned-skills/caveman` |
| **`ponytail`** | Minimalist, stdlib-first YAGNI coding framework | 🔗 [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | `mentioned-skills/ponytail` |
| **`karpathy-guidelines`** | Surgical edits & verifiable success criteria | 🔗 [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) | `mentioned-skills/karpathy-guidelines` |
| **`bluf`** | Bottom Line Up Front output standard | 💡 *Discovered on Instagram/social media* | `mentioned-skills/bluf` |
| **`project-spec`** | Modular 6-file spec generator | 💡 *Discovered on Instagram/social media* | `mentioned-skills/project-spec` |
| **`skill-creator`** | Skill authoring & evaluation toolkit | 🔗 [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/skill-creator) | `mentioned-skills/skill-creator` |

---

## ⚡ Usage Examples

### Starting or Resuming a Project:
```text
/cli-skills
```
> *"Run cli-skills to set up our new web application and generate PRD, Architecture, and GEMINI.md / CLAUDE.md."*

### Finalizing & Cleaning up a Completed Project:
```text
/cli-skills:final
```
> *"Run cli-skills:final to clean up all temporary project spec files and prepare for GitHub release."*

---

## 📄 License

This repository is licensed under the [MIT License](LICENSE).
