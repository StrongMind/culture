# Full Stack Developer

At StrongMind we work in terms of user stories with varying degrees of requirements along with lots of feedback cycles.  We feel the best way to measure how someone would work with our team is to simulate self-organized work.  The following steps make up the technical interview. This exercise is designed to help us understand **how you translate a business problem into a technical solution**.

We care about:
- How you frame the problem
- How you break it down into user stories
- The technical decisions you make (and why)
- Clear, working solutions over exhaustive implementations

This assessment is intentionally scoped to core requirements. 
There are **optional extensions** intended to allow senior candidates to demonstrate deeper system design and judgment.

You may use **any tooling you like**, including AI-assisted coding tools.


1. Complete the stories below
2. Email [recruiter@strongmind.com](mailto:recruiter@strongmind.com) links to your application repository with the subject “**Full Stack Developer Candidate - Your Name**"

## Business Context

Our organization wants better visibility into GitHub activity so we can analyze repository usage and contributor behavior over time.

We are building an **internal service** that ingests **GitHub Push events**, enriches them with related data, and stores them in a way that supports future querying and analysis.

This service is expected to run unattended and behave predictably under both normal and failure conditions.

---

## Technical Requirements

- **Preferred framework:** Ruby on Rails  
  - Rails in API-only mode is acceptable.
  - If you prefer a different Ruby approach, explain why in your design brief.

- **Required runtime:** Docker + Docker Compose  
  - The system must run locally on macOS using Docker Desktop.
  - All dependencies (e.g., database) must be defined in Docker Compose.

- **System of record:** PostgreSQL (required)

---
## GitHub API Usage (Important)

You should ingest events from:
https://api.github.com/events

- You should **not** use an authenticated GitHub token.

We expect your system to:
- Be aware of rate limits
- Behave predictably when limits are reached
- Avoid unnecessary or wasteful polling

How you handle this is part of the design challenge.
---

## Deliverables

Your submission should include:
- A runnable, containerized system
- A **design brief** (1–2 pages max) covering:
  - How you understood the problem
  - Proposed architecture
  - Key tradeoffs and assumptions
  - How you handled rate limits and durability
  - What you intentionally did *not* build
- A README explaining:
  - How to start the system
  - How to run ingestion
  - How to run tests (if included)
  - How to verify the system is working

---

## Core User Stories (Expected for All Candidates)

### Story 1: Ingest GitHub Push Events

**As a data consumer**  
I want GitHub Push activity ingested  
So that it can be analyzed later.

**Acceptance Criteria**
- Events are ingested from the GitHub Public Events API or deterministic equivalent
- Only `PushEvent` items are processed
- Each event is persisted durably
- Events can be uniquely identified and inspected later
- Ingestion is repeatable or continuous

---

### Story 2: Persist Raw and Structured Data

**As an analyst**  
I want key push attributes stored in a structured form  
So that I can query them without parsing raw JSON.

**Acceptance Criteria**
- Raw event payloads are retained for audit/debug purposes
- At minimum, the following fields are queryable without JSON parsing:
  - repository identifier
  - push identifier
  - ref
  - head
  - before
- Data modeling choices are documented at a high level

---

### Story 3: Enrich Push Events

**As a data consumer**  
I want push events enriched with related actor and repository data  
So that I can better understand contributors and repositories.

**Acceptance Criteria**
- Actor and repository data are retrieved using URLs provided in the event payload (or fixture equivalents)
- Enriched data is persisted durably
- The solution avoids obviously unnecessary repeated fetches
- The approach is explained in the design brief

---

### Story 4: Operability and Observability

**As an operator**  
I want the service to be observable and resilient  
So that I can understand what it’s doing and diagnose issues.

**Acceptance Criteria**
- Logs clearly indicate:
  - ingestion behavior
  - successful processing
  - failures and retries
- Malformed or unexpected data is handled gracefully
- The service does not crash-loop on transient failures

---

## Optional Extensions

These are **not required**, but senior candidates are expected to engage with at least one area.

### Extension A: Rate Limiting & Fan-Out Control
- Control API request amplification
- Explain behavior under rate limiting
- Optional: background or non-blocking processing

### Extension B: Idempotency & Restart Safety
- Address duplicate events and restarts
- Prevent unbounded growth or corruption
- Explain tradeoffs

### Extension C: Object Storage
- Store contributor avatars or raw events in object storage
- Persist durable references
- Avoid unnecessary re-downloads
- Demonstrate bounded or temporary storage behavior

### Extension D: Testing Strategy
- Unit tests for key logic
- Integration or end-to-end tests
- Explain what you chose to test and why

---

## Reviewer Experience Requirements

Your repository must run from a clean checkout using commands equivalent to:

1. **Start the system**
   ```bash
   docker compose up --build
   ```
   
2. **Run Ingestion**
   ```bash 
   docker compose run --rm <ingest>
   ```

3. **Run Tests (if included)**
   ```bash 
   docker compose run --rm test
   ```


### Logging

* Logs must be written to stdout/stderr

* docker compose logs -f should clearly show system behavior

### Verification (Required in README)

Include a “How to verify it’s working” section that explains:

* What logs to expect

* What database tables or records to check

* How long the system should run before results appear


**Final Note**

There is no single “correct” solution.

We are far more interested in how you think, prioritize, and explain tradeoffs than in how much you build.



