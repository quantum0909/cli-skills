# CLI Skills (`cli-skills`)

[![Agent Skill Standard](https://img.shields.io/badge/Agent%20Skill-Standard-blue.svg)](https://github.com/anthropics/skills)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**`cli-skills`** is a unified global skill library and orchestrator suite compatible across **Google Antigravity / Gemini CLI**, **Claude Code**, **Open Code**, **Cursor**, **Open Interpreter**, and standard MCP/Agent SDK platforms.

It includes **`gemini-skill`** (the master project initialization and context orchestrator) alongside **`mentioned-skills/`** (a collection of 17 token-efficient engineering skills).

---

## ⚡ Global One-Command Installation

You can install all skills globally for **Claude Code**, **Gemini CLI / Antigravity**, **Open Code**, and **Open Agents** in a single step:

### Option 1: Automatic Global Installer Script

```bash
# Clone repository and run global installer
git clone https://github.com/YOUR_USERNAME/cli-skills.git
cd cli-skills
./install.sh
```

Running `./install.sh` automatically copies and registers all skills globally into:
- 🌐 `~/.gemini/skills/` (Google Antigravity & Gemini CLI)
- 🌐 `~/.claude/skills/` (Claude Code & Claude Plugins)
- 🌐 `~/.opencode/skills/` (Open Code)
- 🌐 `~/.agents/skills/` (Open Agent Standard)

### Option 2: Manual Global Link / Copy

```bash
# Global install for Gemini CLI / Antigravity
mkdir -p ~/.gemini/skills
cp -r SKILL.md ~/.gemini/skills/gemini-skill/
cp -r mentioned-skills/* ~/.gemini/skills/

# Global install for Claude Code
mkdir -p ~/.claude/skills
cp -r SKILL.md ~/.claude/skills/gemini-skill/
cp -r mentioned-skills/* ~/.claude/skills/

# Global install for Open Code
mkdir -p ~/.opencode/skills
cp -r SKILL.md ~/.opencode/skills/gemini-skill/
cp -r mentioned-skills/* ~/.opencode/skills/
```

---

## 🚀 Repository Structure

```text
cli-skills/
├── SKILL.md                  # Main Gemini Master Skill (Created by Author)
├── install.sh                # Automatic Global Installer Script
├── README.md                 # Documentation & Global Setup Guide
├── LICENSE                   # MIT License
├── .gitignore                # Git ignore rules
├── evals/                    # Evaluation & Verification Benchmarks
│   ├── evals.json
│   └── description_evals.json
└── mentioned-skills/         # Subfolder for all mentioned sub-skills
    ├── bluf/                 # BLUF (Bottom Line Up Front)
    ├── cavecrew/             # Cavecrew subagent delegation
    ├── caveman/              # Token-compressed communication
    ├── caveman-commit/       # Caveman Git commit messages
    ├── caveman-compress/     # Memory compression
    ├── caveman-help/         # Caveman help guide
    ├── caveman-review/       # Caveman code review
    ├── caveman-stats/        # Token savings tracking
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
| **`gemini-skill`** | Master project orchestrator & context manager | *Created by author in this repo* | `SKILL.md` |
| **`caveman`** | Token-compressed technical communication suite | 🔗 [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | `mentioned-skills/caveman` |
| **`ponytail`** | Minimalist, stdlib-first YAGNI coding framework | 🔗 [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | `mentioned-skills/ponytail` |
| **`karpathy-guidelines`** | Surgical edits & verifiable success criteria | 🔗 [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) | `mentioned-skills/karpathy-guidelines` |
| **`bluf`** | Bottom Line Up Front output standard | 💡 *Discovered on Instagram/social media* | `mentioned-skills/bluf` |
| **`project-spec`** | Modular 6-file spec generator | 💡 *Discovered on Instagram/social media* | `mentioned-skills/project-spec` |
| **`skill-creator`** | Skill authoring & evaluation toolkit | 🔗 [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/skill-creator) | `mentioned-skills/skill-creator` |

---

## 💻 Agent Platform Compatibility

This skill library works seamlessly out-of-the-box with:

- **Claude Code** (`/gemini-skill`, `/caveman`, `/ponytail`)
- **Google Antigravity & Gemini CLI** (`/gemini-skill`, `GEMINI.md`)
- **Open Code & Open Interpreter**
- **Agent SDK & Custom MCP Agents**

---

## 📄 License

This repository is licensed under the [MIT License](LICENSE).
