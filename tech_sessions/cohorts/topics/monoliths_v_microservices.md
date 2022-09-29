<h2>What are they?</h2>

**Monolith**

* application built as a single unified unit
* Self contained
* independant from other applications

![image](https://user-images.githubusercontent.com/20523663/192886732-0db9a01f-4ce5-400d-a3b2-c6370e12c1f7.png)

**Microservices**
* a collection of smaller, independently delployable services
* services have their own business logic and database with a specific goal. 
* Updating, testing, deployment, and scaling occur within each service.

![image](https://user-images.githubusercontent.com/20523663/192887168-41006eca-562c-44a3-ac1d-7461265ad4dd.png)


<h2>define pros and cons</h2>

**Monolith**

Pros

* ease of code management -  When an application is built with one code base, it is easier to develop.
* less cognitive overhead - developers need not learn different applications, they can focus on one
* easier deployment - One executable file or directory makes deployment easier
* Performance – In a centralized code base and repository, one API can often perform the same function that numerous APIs perform with microservices.
* Simplified testing – Since a monolithic application is a single, centralized unit, end-to-end testing can be performed faster than with a distributed application. 
* Easy debugging – With all code located in one place, it’s easier to follow a request and find an issue.

Cons

Monolithic applications can be quite effective until they grow too large and scaling becomes a challenge. 
* Slower development speed – A large, monolithic application makes development more complex and slower.
* Scalability – You can’t scale individual components.
* Reliability – If there’s an error in any module, it could affect the entire application’s availability.
* Barrier to technology adoption – Any changes in the framework or language affects the entire application, making changes often expensive and time-consuming.
* Lack of flexibility – A monolith is constrained by the technologies already used in the monolith.
* Deployment – A small change to a monolithic application requires the redeployment of the entire monolith.

**Microservices**

Pros

* Flexible scaling – If a microservice reaches its load capacity, new instances of that service can be deployed to help relieve pressure.
* Tightly Scoped and testable – Teams can experiment with new features and roll back if something doesn’t work. 
* Independently deployable – Since microservices are individual units they allow for fast and easy independent deployment of individual features. 
* Technology flexibility – Microservice architectures allow teams the freedom to mix and match tools. 

Cons

* Development sprawl – Microservices add more complexity compared to a monolith architecture, since there are more services in more places created by multiple teams. If development sprawl isn’t properly managed, it results in slower development speed and poor operational performance. 
* Exponential infrastructure costs – Each new microservice can have its own cost for test suite, deployment playbooks, hosting infrastructure, monitoring tools, and more.
* Added organizational overhead – Teams need to add another level of communication and collaboration to coordinate updates and interfaces. 
* Debugging challenges – Each microservice has its own set of logs, which makes debugging more complicated.  
* Lack of standardization – Without a common platform, there can be a proliferation of languages, logging standards, and monitoring. 
* Lack of clear ownership – As more services are introduced, so are the number of teams running those services. Over time it becomes difficult to know the available services a team can leverage and who to contact for support.



<h2>how would you make an evaluation?</h2>

* phase of development (new vs mature product)
* current scale of usage
* complexity of the business needs
* resources available to develop and support
* speed to market (get it in the user's hands)

<h2>Examples</h2>

Netflix (started as Monolith)
Amazon (started as Monolith)
Ebay (started as Monolith)
Uber (started as Monolith)

In other words, many very successful products started as a monolitgh and transitioned as they grew in maturity, scale and complexity. A Microservices model fits the organizational shape of very large corporations. 
 
Can you think of examples of products that might be in the wrong model?

<h2>what does it look like to morph from one to the other?</h2>

Create a plan
* Identify which services should stand alone
* Disentangle dependencies within the monolith
* Design APIs and plan for backwards compatibility
* Consider migration and sync of data between the monolith and microservices databases

(Maybe) Put everything in a monorepo

![image](https://user-images.githubusercontent.com/20523663/193133291-7282722b-6bb5-4d41-9bd2-6b19d6dc2729.png)

Use a shared CI Pipeline

Testing is your friend

Use Feature Flags

Add Observability (monitoring and logging to keep tabs on multiple services)

