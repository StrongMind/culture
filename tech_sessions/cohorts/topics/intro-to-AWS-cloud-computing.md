## Introduction to Cloud Computing
Types of cloud computing (IaaS, PaaS, SaaS)
There are three cloud computing models available on AWS.

* **Infrastructure as a Service (IaaS)**: It is the basic building block of cloud IT. It generally provides access to data storage space, networking features, and computer hardware(virtual or dedicated hardware). It is highly flexible and gives management controls over the IT resources to the developer. For example, VPC, EC2, EBS.
* **Platform as a Service (PaaS)**: This is a type of service where AWS manages the underlying infrastructure (usually operating system and hardware). This helps the developer to be more efficient as they do not have to worry about undifferentiated heavy lifting required for running the applications such as capacity planning, software maintenance, resource procurement, patching, etc., and focus more on deployment and management of the applications. For example, RDS, EMR, ElasticSearch.
* **Software as a Service(SaaS)**: It is a complete product that usually runs on a browser. It primarily refers to end-user applications. It is run and managed by the service provider. The end-user only has to worry about the application of the software suitable to its needs. For example, Saleforce.com, Web-based email, Office 365 .

## Introduction to Amazon Web Services (AWS)
AWS services are typically grouped into different categories like compute, networking, storage, applications, databases, and analytics.

**Compute**
Compute resources can be considered the brains and processing power that are required by applications and systems to carry out computational abilities via a series of instructions.
* Amazon EC2: Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides secure, resizable compute capacity in the cloud
* AWS Lambda: AWS Lambda is a serverless, event-driven compute service that allows you to run code without managing servers.
* AWS Elastic Beanstalk: AWS Elastic Beanstalk is a Platform as a Service that facilitates quick deployment of your applications by providing all the application services that you need for your application.

**Networking**
* Amazon VPC: Amazon VPC is your network environment in the cloud.
* Amazon Route 53: Amazon Route 53 is a highly available and scalable cloud Domain Name System (DNS) web service.

**Storage**
* Amazon S3 (Simple Storage Service): Amazon Simple Storage Service (Amazon S3) is object storage with a simple web service interface to store and retrieve any amount of data from anywhere on the web. 
* Amazon Glacier: Amazon Glacier is a secure, durable, and extremely low-cost storage service for data archiving and long-term backup. 

**Databases**
* Amazon RDS (Relational Database Service): Amazon Relational Database Service (Amazon RDS) makes it easy to set up, operate, and scale a relational database in the cloud.
* Amazon DynamoDB (Non-Relational Database): Amazon DynamoDB is a fast and flexible NoSQL database service for all applications that need consistent, single-digit millisecond latency at any scale.

## How to determine the right services for your project
**Consider the Business Needs**
* What are the business flows this application will support? (i.e. submit order, customer sign-up, etc.)
* Who executes those business flows and where from? (i.e. customers, other systems)
* What is the frequency of each business flow? (i.e. 1000 orders per hour, 100 sign-ups per hour, etc.)
* What will happen to your business -in quantifiable terms, such as lost revenue or number of negative mentions- if any of these flows stops working for: 1 minute, 5 minutes, 1 hour, 8 hours, 24 hours?

**Consider the Usage**
* Will it be always on and running, waiting for input/data to process? Even if no input/data/request comes in, it’ll just be idle, consuming server resources and infrastructure.
* Will it run only when needed? In this case, the application starts when it has a request or data to process and stops when completed.
* The first example follows the classic model of running applications and points you towards ECS, EC2 or Elastic Beanstalk
* The second example may be a use case for Lambda

**AWS Region Considerations**
* Not all services are available in all regions
* Some services cost more in certain regions [AWS Region Cost Comparison](https://www.concurrencylabs.com/blog/choose-your-aws-region-wisely/)

**Performance and Scalability**
Some Services have limits
* Number of provisioned resources (i.e. EC2 instances, SQS queues, CloudWatch Alarms, IAM Roles/Users, S3 Buckets, VPCs)
* Data retention periods (i.e. CloudWatch metrics, Kinesis streams, SQS message retention)
* Throughput (i.e. concurrent Lambda executions, CloudWatch List/Describe/Put requests, SNS messages per second, Dynamo DB capacity units, EFS throughput in Gb/s)
* Payload size (i.e. SQS messages, Dynamo DB items, Kinesis records, IoT messages, IAM policy size)
* Storage size (i.e. EBS volume size)
* Some of these limits can be increased. Check for any "deal breakers" in services which can not be increased. 

Who does the Scaling?
You
* EC2 instance types, RDS read replicas, RDS storage increase, AWS Elasticsearch node count

AWS
* Lambda functions, S3 buckets sizes, SQS messages per second

AWS Automates based on Your Configurations
* EC2/ECS Auto Scaling, Elastic Load Balancer, RDS Aurora Read Replica Auto Scaling

**Level of Commmittment (Lock In)**
![image](https://user-images.githubusercontent.com/20523663/214369392-19152d99-30a3-4c0f-80df-503c4ee6b327.png)


## How your choices impact costs
**Identify price dimensions relevant to your application and AWS service**
* Consider both the compute AND data transfer / storage needs
* Estimate a both low scale and high scale (some services get cheaper as usage grows)
* What does usage look like...Low and steady? Steady growth? Spikey?



## Choosing the Services for your New Project
In small groups, consider the following scenario and make recommendations as to which AWS services you would choose. This is open book, feel free to visit online resources such as https://docs.aws.amazon.com/index.html or https://www.eginnovations.com/blog/top-10-aws-services-explained-with-use-cases if you need more information about a particular service.

**Scenario:**
We have an exciting opportunity to provide a mobile first content delivery application for highschool students who need supplemental material to help them with their understanding of key math concepts. We expect to start with a beta group of 1000 users, but the sales team thinks this is a BIG opportunity and we could reach 100k students. 
* It should serve content to users
* It should allow searching content
* It should allow admin users to upload new content
* It should process "near real time" events from ORDS regarding student progress
* It should push student activity data to the data pipeline

Resources
https://docs.aws.amazon.com/index.html
https://www.eginnovations.com/blog/top-10-aws-services-explained-with-use-cases/
https://www.concurrencylabs.com/blog/how-to-prepare-aws-assessment/


OR 
## Setting up and configuring a basic web application on AWS (Activity)?
