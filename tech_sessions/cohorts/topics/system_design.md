# System Design

The process of designing the architecture, interfaces, and flow of data for a system to satisfy particular requirements

## Design Considerations

- What problem are we trying to solve?
- Functional requirements
  - high level stories
- Non-functional requirements
  - availability
  - consistency
  - latency
  - usage
  - performance

### Oh yeah, and that too...
- value delivery medium
  - mobile, web, etc
- security
- accessibility (a11y)
- internationalization (i18n)
- localization (l10n)

## Solutioning

### Approaches

- top down
- bottom up
- middle out

### Infrastructure

- monolith vs microservice
- horizontal vs vertical scaling
- storage
  - relational
  - NoSQL
  - graph

### Static Elements
- decomposition
- modules, components
- separation of concerns
- presentation
- persistence

### Dynamic Elements
- data flows
- interactions
- messaging

## Sample

### What problem are we solving?

* Newfangled Calendar System
* Fetch and store calendar data from other systems
  * during onboarding
  * ongoing

### Non-functional Requirements

* 99.9% uptime
* multi-tenant
* authentication
* performance should not suck
* scale up quickly with increased usage

### Solution

#### Value delivery to end user

![web app](https://miro.medium.com/max/720/1*Im0pVMzmgQ6O_Q36MHLe9Q.png)

- **redundancy** for uptime
- **load balancing** for scalability and performance

#### External calendar synchronization

![external calendar sycn](https://miro.medium.com/max/720/1*copxOLnthcHbnM2OMpLlrg.png)

- **separation of concerns** for scalability and performance

#### Design Summary: Monolith with a side of microservices

![Monolith with a side of microservices](https://miro.medium.com/max/720/1*GQeoSCExlXrkRnrwwv_aDw.png)

- **redundancy** for uptime
- **load balancing** for scalability and performance
- **separation of concerns** for scalability and performance

## References

* [System Design Primer](https://www.educative.io/blog/system-design-primer)
* [The Complete Guide To System Design In 2022](https://www.educative.io/blog/complete-guide-to-system-design)
* [Software Engineering | System Design Strategy](https://www.geeksforgeeks.org/software-engineering-system-design-strategy)
* [How to Learn Software Design and Architecture](https://www.freecodecamp.org/news/software-design)
* [Software Design by Example](https://madflojo.medium.com/software-design-by-example-c53b7b484807)