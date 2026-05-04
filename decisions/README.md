# Architecture Decision Records

ADRs explain why standards and architecture are the way they are. They are written once and never edited — if a decision changes, a new ADR supersedes the old one.

## When to write an ADR

Write an ADR when:
- You're changing or adding a standard in `engineering_standards/`
- You're choosing a new technology or library
- You're making a significant architectural choice that isn't obvious from the code
- You're consciously deviating from a standard

You do NOT need an ADR for:
- Bug fixes
- Routine dependency updates
- Decisions that follow an existing standard

## Template

```markdown
# NNNN — Title

**Date:** YYYY-MM-DD
**Status:** Proposed | Accepted | Deprecated | Superseded by [NNNN]
**Author:** Name

## Context

What problem are we solving? What forces are at play?

## Decision

What did we decide?

## Alternatives Considered

What else did we look at and why did we not choose it?

## Consequences

What becomes easier? What becomes harder? What are we accepting?
```

## Index

| # | Title | Status |
|---|---|---|
| [0001](0001-react-spa-direction.md) | React SPA direction for new products | Accepted |
