# Engineering Standards

Standards tell you **what to do**. [Decisions](../decisions/) tell you **why**.

## Tiers

Every standard is labeled with one of three tiers:

- **Required** — enforced in CI or blocks PR merge
- **Expected** — caught in code review; reviewers are responsible for flagging
- **Recommended** — preferred approach; deviations are fine with a code comment

## Areas

- [CI/CD: Go](ci-cd-go.md)
- API Design — coming soon
- Frontend — coming soon
- Backend: Rails — coming soon
- Backend: Go — coming soon
- Observability — coming soon
- Infrastructure — coming soon
- Security — coming soon

## Proposing Changes

Standards evolve. To change one:

1. Open a PR with your proposed change to the relevant standards file.
2. Include or reference an [ADR](../decisions/) if the change is non-trivial.
3. Get approval from the area owner (see [CODEOWNERS](../CODEOWNERS)).
