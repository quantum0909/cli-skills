---
name: project-spec
description: Generates a complete 6-file project specification package (PRD.md, Architecture.md, Rules.md, Phases.md, Design.md, Memory.md) for any new or existing software project. Use this skill whenever the user asks to create project documentation, write a PRD, structure a project, define architecture and rules, break a project into phases, design project specs, or invokes /project-spec.
---

# Project Specification Generator

Generate a complete, production-grade 6-file project documentation package to guide AI-driven software development from concept to delivery.

## Core Deliverables

When invoked, generate the following 6 markdown files in the project root or specified directory:

1. **`PRD.md`**: Project Requirements Document.
2. **`Architecture.md`**: Technical architecture, directory structure, and data flows.
3. **`Rules.md`**: AI boundaries, coding standards, approved libraries, and constraints.
4. **`Phases.md`**: Phase-by-phase implementation roadmap with discrete milestones.
5. **`Design.md`**: Visual design system, typography, color tokens, and UI layout rules.
6. **`Memory.md`**: Context preservation log tracking completed work and active state.

---

## File Templates & Requirements

### 1. `PRD.md` Template
```markdown
# Project Requirements Document (PRD)

## 1. Overview & Problem Statement
* **Project Name**: [Name]
* **Problem**: [Core problem solved]
* **Target Audience**: [Primary user personas]

## 2. Core Features
* **Feature 1**: [Description & acceptance criteria]
* **Feature 2**: [Description & acceptance criteria]

## 3. Success Metrics
* [Metric 1]
* [Metric 2]
```

### 2. `Architecture.md` Template
```markdown
# Architecture Specification

## 1. Tech Stack
* **Frontend**: [Framework / Library]
* **Backend**: [Runtime / Language / Framework]
* **Database**: [Database & ORM]

## 2. Project Directory Structure
```
project-root/
├── src/
│   ├── components/
│   ├── services/
│   └── utils/
└── docs/
```

## 3. Data Flow & API Contracts
* [Data flow description or diagram]
```

### 3. `Rules.md` Template
```markdown
# AI Coding Rules & Boundaries

## 1. Package & Dependency Constraints
* **Approved Libraries**: [List of permitted packages]
* **Forbidden Libraries**: [List of banned packages/approaches]

## 2. Code Quality & Formatting
* [Style & typing rules]
* [Error handling standards]

## 3. Scope Boundaries
* Do not introduce unrequested features or unnecessary abstractions.
```

### 4. `Phases.md` Template
```markdown
# Implementation Phases

## Phase 1: Foundation & Setup
* [ ] Task 1.1: Project initialization
* [ ] Task 1.2: Core layout & routing

## Phase 2: Core Features
* [ ] Task 2.1: Feature implementation
* [ ] Task 2.2: Data integration

## Phase 3: Polish & Deployment
* [ ] Task 3.1: Testing & bug fixes
* [ ] Task 3.2: Production build
```

### 5. `Design.md` Template
```markdown
# Design System Specification

## 1. Color Palette
* **Primary**: `#HEX`
* **Secondary**: `#HEX`
* **Background**: `#HEX`

## 2. Typography
* **Heading Font**: [Font name]
* **Body Font**: [Font name]

## 3. Layout & Responsiveness
* Mobile-first responsive rules and breakpoints.
```

### 6. `Memory.md` Template
```markdown
# Project Memory & Progress Log

## Current Status
* **Active Phase**: Phase 1
* **Completed Tasks**: None

## Session History
* **[Date]**: Project spec created.
```

---

## Execution Instructions

1. Interview user or analyze prompt context to gather project details.
2. Generate all 6 specification files tailored to the specific project domain.
3. Validate that `Rules.md` contains strict, verifiable boundaries.
