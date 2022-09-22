# System Visualization

## Importance of Visualization
* A visual representation of the relationship between different elements
* Communicating the big picture 
* Communicating the essence of ideas
* Communicating complexity
* Making processes more tangible

References: *[Francis Miller - The Power of Diagrams](https://www.francismiller.com/the-power-of-diagrams/)*

## Types of Diagrams
* Simple block diagram
* User Flow
* Data Flow
* Swimlane
* Unified Modeling Language
  * Structural (i.e. Class, Component, Deployment)
  * Behavorial (i.e. Use Case, Activity, Sequence, State)
* Entity-Relationship Diagram

## Simple Block Diagram
* Simple components
  * simple shapes (blocks, ovals)
  * words
  * lines and arrows
  * icons
* No "training" required

![Sample block diagram](./sample_block_diagram.png)

## User Centric Diagrams

### User flow diagram
* User's navigation through a product or products
  * user experience
  * sequence of steps

![Sample user flow diagram](./sample_user_flow_diagram.png)
### User Journey Map
* a visual representation of the customer experience
* view the entire customer experience as a path or journey that begins with having a need and ends with having that need met

![Sample user journey map](./sample_user_journey_map.jpg)

## Data Flow Diagram
* Maps out the flow of information for any process or system
* Component Types
  * External Entity - outside system that sends/receives data
  * Process - changes data and produces output
  * Data Store - repository that persists data
  * Data Flow - direction of the flow of data

![Sample data flow diagram](./sample_data_flow_diagram.jpg)

## UML Sequence Diagram
* Behavioral diagrams that detail how software operations
* Captures the interaction between objects, components, systems
* Captures order of operations

![Sample sequence diagram](./sample_sequence_diagram.png)

## Diagramming Tools
* Basics
  * Pencil and paper
  * Whiteboard
  * Cocktail napkin
* WYSIWYG Software Tools
  * LucidChart
  * Visio
  * Draw.IO --> app.diagrams.net
  * Gliffy
* Diagrams as Code
  * [WebSequenceDiagrams.com](https://www.websequencediagrams.com)
  * [Mermaid](https://mermaid.live)

## Introduction to Mermaid
* Create diagrams and visualizations using text and code (no drawing needed)
* Ease to generate, modify and render diagrams when you make them
* Reduces the time and effort required to create diagrams
* Embeddeble in documents (Markdown, Confluence, HTML pages)

```
graph TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
    C -->|One| D[Laptop]
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
```

```mermaid
graph TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
    C -->|One| D[Laptop]
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
```