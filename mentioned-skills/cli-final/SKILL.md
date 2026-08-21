---
name: cli-skills:final
description: User-invoked project completion & spec cleanup skill. Use ONLY when explicitly invoked by the user typing /cli-skills:final or /cli-skill:final to finalize a completed project. Automatically deletes all temporary project specification files (PRD.md, Architecture.md, Rules.md, Phases.md, Design.md, Memory.md) AND deletes GEMINI.md or CLAUDE.md entry point files all at once, making it effortless to send, zip, or publish a clean completed package anywhere. Do NOT self-activate.
---

# CLI Skills Final (`cli-skills:final`) — Project Spec Cleaner & Package Preparer

`cli-skills:final` is a standalone, user-invoked skill designed to finalize a completed software project. When your project is 100% finished, running `/cli-skills:final` deletes all temporary specification and context tracking files at once so you have a clean, production-ready workspace ready to share, upload, or deploy anywhere.

---

## ⚡ How to Trigger

```text
/cli-skills:final
```
*(or `/cli-skill:final`)*

---

## 🧹 What `cli-skills:final` Deletes at Once

When invoked by the user, `cli-skills:final` cleans up and deletes the following temporary files simultaneously:

- ❌ `PRD.md` (Product Requirements)
- ❌ `Architecture.md` (Tech Stack & Schemas)
- ❌ `Rules.md` (AI Coding Rules)
- ❌ `Phases.md` (Milestones Breakdown)
- ❌ `Design.md` (UI/UX System)
- ❌ `Memory.md` (Decision Log)
- ❌ `GEMINI.md` / `CLAUDE.md` (AI Memory Entry Point Tracker)

*(Your user-facing `README.md`, `LICENSE`, configuration files, and production source code remain 100% intact).*

---

## 📋 Execution Protocol

1. **User Confirmation**: Asks the user to confirm project completion before purging files.
2. **One-Click File Deletion**: Deletes all 6 spec files plus `GEMINI.md` or `CLAUDE.md` all at once.
3. **Clean Workspace Ready**: Leaves your project directory completely clean and ready to be uploaded, zipped, or published anywhere!
