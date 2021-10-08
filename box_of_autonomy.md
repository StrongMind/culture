
We hire the right people and trust them to do their job.   That said, there are times when it is practical and expedient to standardize practices.

This list is intended to be as minimal as possible.  Any decisions not expressly discussed here are at the team’s discretion.

If you need clarification, ask.  If you think this goes too far, question it. If it needs to go farther, make a suggestion.

Otherwise, go get it done.

Each team/product will produce/publish/follow the following:


## Published Backlog
- Stored in Jira
- Single Threaded (only one #1 priority, only one #2 priority, etc)
- Non-Nested (no parent child relationships between stories)
- Prioritized
- All stories User Oriented, with a consistent set of User Personas
- Stories less than max time box in duration, Epics may be larger

## Focused Work
- Only stories, tasks, defects in current sprint are worked on


## Development Time Box
- Maximum delivery to production time box of 1 week
- Published schedule of time boxes for each team
- Understood process, agreed up on by team
- Delivery of value every time box
- Demo, from production, at least every 2 weeks
- Mechanism for reflecting on effectiveness of process and continually improving


## APIs
- All functionality and data available via api
- App consumes same API
- language agnostic
- stateless
- Adhere to agreed upon API standards (e.g. naming, conventions, protocols, etc)
- Machine Readable documentation that can generate clients in all preferred languages.


## Incident Management
- One corporate Ticket System
- Meet or beat company Ticket SLAs
- Team determined process for handling off hours outages, with mechanism published.  Integrate with corporate notification system, if available.
- Adhere to company issue resolution and escalation procedures


## Goals/Priorities
- Goals Trickle Down – Damian sets company, C-Level sets organizational, etc.  Each level may augment with additional goals as appropriate.
- Priorities may change at the end of a time box, earlier with two levels of management agreement and explanation.
- All goals will be tracked and viewable at lowest reasonable fidelity/interval


## Team Performance Objectives
- Teams will track rate of value delivery and trend over time (See [Metrics](https://github.com/StrongMind/culture/blob/master/metrics.md))
- All other team performance metrics at team discretion


## Values
- Team values must be a superset of company values and not in conflict


## Release Process
- Release to shared environments subject to OPS release policy and practices.
- Release to team controlled environments at team discretion and must meet all stated performance SLAs


## Security
- Team should understand and follow HIPAA and FERPA for data stores
- All Apps subject to OPS security requirements (e.g pen testing, data security in storage/transit)


## Communication Tools
- Teams need to be available via email, slack within a reasonable time frame (async, not real time)
- Standard communication tools should be used.  New tools can be proposed.


## Technology Choices – language, framework, cloud platform, etc
- Use the best tool for the job, with the knowledge you are accountable to support the decision.
- Choosing technology not on the list of Ops supported options needs to be done via proposal to wider group.
- Use of a new technology should be announced/published via the standard channels.


## Hiring
- Leadership reserves the right to veto any hiring decision, but will not force a hire on a team.


## Customer Communication
- Customer impacting changes communicated via published policy, owned by client services.
- If changes can be released behind feature toggles, communication policy can be delayed until activated.
- Phase Gates, Blue Green, and similar Test-In-Production methods for mitigating risk of changes are encouraged.


## Alerts/Notifications/Logs/Data
- Team systems must be a superset of corporate systems run by OPS (e.g. teams need to integrate with the following OPS systems, but can stand up their own)
- Products must integrate with the corporate alerting system.
- Logs must be shipped to the approved OPS repository.
- Data must be shipped to the data platform.
- Data retention matches corporate policy.
