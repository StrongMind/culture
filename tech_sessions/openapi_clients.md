
# OpenAPI Course

## What is OpenAPI?
OpenAPI is a specification for describing RESTful APIs. It allows you to define the structure, endpoints, security, and data models of your API using a standard and language-agnostic format. This makes it easy for developers to understand and consume your API.

## Why use OpenAPI?
OpenAPI is a powerful tool for designing and documenting RESTful APIs. It provides a standard way to describe your API, which makes it easier for developers to understand and consume. It also allows you to generate client libraries in a variety of languages, which can save you time and effort when building your API.

## Pre-requisites
Before you begin this course, you should have a basic understanding of RESTful APIs and how they work. You should also be familiar with JSON and YAML, as these are the formats used by OpenAPI.

## What you'll learn
In this course, you'll learn how to use OpenAPI to design and document your RESTful APIs. You'll also learn how to generate client libraries in a variety of languages, which can save you time and effort when building your API.

## What you'll build
You'll build a simple API for managing users. The API will allow you to read users. You'll also learn how to generate client libraries in a variety of languages, which can save you time and effort when building your API.

<br/><br/>

# Installation and setup
In this section, you'll install the tools required to complete this course.

## Verify required tools
Ensure that you have the following tools installed on your system:

- Text editor or IDE of your choice - https://code.visualstudio.com/download
- Node.js (with npm, the Node.js package manager) - https://nodejs.org/en/download/
- Java - https://www.java.com/en/download/
- Ruby - https://www.ruby-lang.org/en/downloads/
- Python - https://www.python.org/downloads/

## Install OpenAPI Generator CLI
Open a terminal or command prompt and install the OpenAPI Generator CLI globally using npm:
    
```bash
npm install @openapitools/openapi-generator-cli -g
```

<br/><br/>

# Building a Simple API to Manage Users
In this section, you'll build a simple API for managing users. The API will allow you to read users from an in-memory array. We will clone a repo that uses Sinatra for the API.

### Step 1: Clone the sample repo:

```bash
git clone https://github.com/StrongMind/openapi-course-sample-api
```

### Step 2: Install the Sinatra gem:

```bash
gem install sinatra
```

### Step 3: Run the app:

```bash
ruby users_api.rb
```

<br/><br/>

# Describing Your API Using OpenAPI


### Step 2: Create a New OpenAPI Specification File
With your text editor or IDE, open the file called `openapi.yaml`. This file will serve as your OpenAPI specification.

### Step 3: Define the API
In your specification file, start by defining the basic information about your API, such as its version, title, description, and contact information. Here's an example in YAML format:

```yaml

openapi: 3.0.0
info:
  version: 1.0.0
  title: My API
  description: Example API using OpenAPI Specification
  contact:
    name: Your Name
    email: yourname@example.com
```

### Step 4: Define API Paths and Operations
Next, define the paths and operations supported by your API. Each path corresponds to a URL endpoint, and each operation corresponds to an HTTP method (e.g., GET, POST, PUT, DELETE). Here's an example:

```yaml
paths:
  /users:
    get:
      summary: Get all users
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  $ref: '#/components/schemas/User'
  /users/{id}:
    get:
      summary: Get a user by ID
      parameters:
        - name: id
          in: path
          required: true
          schema:
            type: integer
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/User'
```

### Step 5: Define Data Models
Define the data models (schemas) used by your API. These models represent the structure and properties of your request and response payloads. Here's an example:


```yaml
components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        email:
          type: string
```

### Step 6: Save your file  

<br/><br/>

# Generating Client Library in Ruby

### Step 1: Generate a client
Generate a client using the OpenAPI Generator CLI, specifying the language you want to use. For example, to generate a ruby client, run the following command:

```bash
openapi-generator-cli generate -i openapi.yaml -g ruby -o my-users-client-ruby --additional-properties=gemName=my_users_client
```

Notice the additional properties flag that we used to specify the name of the gem. Without this, you will end up with a gem called openapi_client, which is not very descriptive.

### Step 2: Install the client
Use the instructions provided in the README file generated in the previous step to install the client as a gem.

Here are the essential pieces:

1. Build a gem

To build the Ruby code into a gem:

```shell
cd my-users-client-ruby
gem build my_users_client.gemspec
cd ..
```

2. Install the gem

Then install the gem locally:

```shell
gem install ./my-users-client-ruby/my_users_client-1.0.0.gem
```

### Step 3: Use the client
Use the client in your application to make API calls. For example, here's how you might use the ruby client generated in the previous step.

Create a file called test-client.rb and add the following code:

```ruby
# test-client.rb
require 'my_users_client'

MyUsersClient.configure { |c| c.host = 'http://localhost:4567' }
api_instance = MyUsersClient::DefaultApi.new

begin
    #Get all users
    result = api_instance.users_get
    p result
rescue MyUsersClient::ApiError => e
    puts "Exception when calling DefaultApi->users_get: #{e}"
end

```

Run the code:

```bash
ruby test-client.rb
```

<br/><br/>

# Generating Client Library in Python

### Step 1: Generate a client
Generate a client using the OpenAPI Generator CLI, specifying the language you want to use. For example, to generate a python client, run the following command:

```bash
openapi-generator-cli generate -i openapi.yaml -g python -o my-users-client-python --additional-properties=packageName=my_users_client
```

Notice the additional properties flag that we used to specify the name of the package. Without this, you will end up with a package called openapi_client, which is not very descriptive.

### Step 2: Install the client
Use the instructions provided in the README file generated in the previous step to install the client as a package.

Here are the essential pieces:

1. Create a venv

To create a venv:

```shell
python3 -m venv venv
source venv/bin/activate
```

2. Install the package

Then install the package locally:

```shell
pip install ./my-users-client-python
```

### Step 3: Use the client

Use the client in your application to make API calls. For example, here's how you might use the python client generated in the previous step.

Create a file called test-client.py and add the following code:

```python
# test-client.py
import time
import my_users_client
from pprint import pprint
from my_users_client.apis.tags import default_api
from my_users_client.model.user import User
configuration = my_users_client.Configuration(
    host = "http://localhost:4567"
)


# Enter a context with an instance of the API client
with my_users_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    
    try:
        # Get all users
        api_response = api_instance.users_get()
        pprint(api_response)
    except my_users_client.ApiException as e:
        print("Exception when calling DefaultApi->users_get: %s\n" % e)
```

Run the code:

```bash
python test-client.py
```

<br/><br/>

# Try It Yourself
In this section, you'll practice what you've learned by trying out these tools on existing APIs in our ecosystem.

## Step 1: Choose an API
Find an API that StrongMind deals with that does not currently have generated clients. Ideally, it would support OpenAPI out of the box. Otherwise you would need to write the OpenAPI specification yourself or find a way to generate it using the API framework being used.

Some examples of APIs that might work:
- [Identity](https://devlogin.strongmind.com/swagger/v1/swagger.json)
- [Catalog Manager](https://sm-coursemanagement-development.azurewebsites.net/swagger/v1/swagger.json)
- [EDS](https://eds-api-dev.azurewebsites.net/swagger/v1/swagger.json)
- [Data Pipeline](https://stage-di-data-pipeline-api.strongmind.com/api-docs/v1/swagger.json)

If you would like to add OpenAPI to a rails app, you can use the following tool:
https://github.com/rswag/rswag

## Step 2: Generate a client

Generate a client for one of the above APIs using the OpenAPI Generator CLI, in the language of your choice.

## Step 3: Compare this client to the existing clients used for this API

Locate the projects that call the API you chose and compare the generated client to the existing clients used for calling this API.

For example, if you generated a ruby client for the Identity API, compare it to the existing ruby client used for this API:
https://github.com/StrongMind/platform-ruby-sdk/blob/main/lib/platform_sdk/identity/clients.rb

What are the pros and cons of generating clients vs. writing them by hand?
