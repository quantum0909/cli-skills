---
name: cli-final
description: Project completion & GitHub release cleaner. Automatically invoked when a project is completed to clean up temporary project-spec files (PRD.md, Architecture.md, Rules.md, Phases.md, Design.md, Memory.md, GEMINI.md, CLAUDE.md), verify clean git status, ensure build/tests pass, update .gitignore, and prepare the repository for a clean production push to GitHub. Use this skill whenever finalizing a completed project or invoking /cli-final or /cli-skills:final.
---

# CLI Final (`cli-final`) — Project Cleanup & GitHub Release Preparer

Finalize a completed project by purging temporary development specification files, auditing repository readiness, verifying builds, and staging a clean production codebase ready for GitHub release.

---

## 📋 Cleanup & Release Protocol

When `/cli-final` or `/cli-skills:final` is invoked:

### Step 1: Completion Verification
1. Read `Phases.md` and `GEMINI.md` / `CLAUDE.md` to verify all milestone tasks are 100% completed.
2. If incomplete tasks remain, prompt the user for confirmation before proceeding with cleanup.

### Step 2: Specification Cleanup & Removal
Delete temporary specification and internal context tracking files that are no longer required in production:
- ❌ `PRD.md`
- ❌ `Architecture.md`
- ❌ `Rules.md`
- ❌ `Phases.md`
- ❌ `Design.md`
- ❌ `Memory.md`
- ❌ `GEMINI.md` / `CLAUDE.md` / `CONTEXT.md`

*(Note: Essential project documentation such as user-facing `README.md`, `LICENSE`, and API docs are preserved).*

### Step 3: Git & Build Integrity Audit
1. Check `.gitignore` to ensure temporary files, build artifacts, node_modules, and secret keys `.env` are ignored.
2. Run project build and test commands (e.g. `npm test`, `pytest`, `cargo test`, `go test`) to ensure zero broken builds before release.
3. Clean temporary logs or scratch files.

### Step 4: GitHub Release Preparation
1. Prompt or generate a clean release commit message summarizing features built during the project.
2. Prepare Git commands for user to push to GitHub:
   ```bash
   git add .
   git commit -m "chore(release): project completed & production ready"
   git push origin main
   ```
