# Example README

This is an example of what we expect in a README.

## What?

A summary of the purpose of this piece of software, for example: 

Delivery of Learnosity assessments to students and reporting student results to teachers.


### Diagram
A diagram showing all of the following:
* project inputs
* projects end users
* project outputs
* project data stores

([see mermaid documentation on how to create these diagrams](https://mermaid-js.github.io/mermaid/#/./flowchart?id=flowcharts-basic-syntax))

For example:

```mermaid
graph LR
    subgraph project_components[Hypothetical Service]
    	
	    project_api[Hypothetical Service API]
	    project_frontend[Hypothetical Service Frontend]
	    subgraph datastores[Data Stores]
    		postgres[PostgreSQL]
    		queue[SQS queue service]
    	end
	  end

    subgraph inputs[Inputs]
    	event_platform_input[Event Platform]
			cloud_canvas[Cloud Canvas API]
			identity[Identity Server]
    end
    

    subgraph end_users[End Users]
	    student[Student]
			administrator[Administrator]
    end
    
    subgraph outputs[Outputs]
    	event_platform_out[Event Platform]
    end
    
    event_platform_input -->|Canvas Change Events| project_api
    cloud_canvas -->|Canvas User API get| project_api
    identity -->|Authentication of users| project_frontend
    
    project_frontend -->|Views a thing| student
    administrator -->|Creates things| project_frontend
    
    project_api -->|Sends create and view messages| event_platform_out

```


## Where?

### links
A list of links to deployed software
For example:

* dev: [dev.strongmind.com](https://dev.strongmind.com)
* prod: [strongmind.com](https://strongmind.com)

### CI/CD
A link to CI/CD for this repository
For example:

* [https://github.com/StrongMind/culture/actions](https://github.com/StrongMind/culture/actions)

### Administration
A list of links to operational information, for example:

* [logs](https://us-west-2.console.aws.amazon.com/cloudwatch/home?region=us-west-2#logsV2:logs-insights$3FqueryDetail$[…]*2flambda*2fid-mapper-prod$2529$2529)
* [exception tracking](https://sentry.io/organizations/strongmind-4j/projects/id-mapper/?project=6262579)
* [monitoring & metrics dashboard](https://us-west-2.console.aws.amazon.com/cloudwatch/home?region=us-west-2#dashboards:name=identifier-mapper-prod)



## Local Install
A set of comprehensive instructions to install from scratch on a developer workstation. We suggest you test these with a member from another team. For example:

### mac
In this source directory:
1. install homebrew
2. install python 3.10 using homebrew `brew install python@3.10`
3. install virtualenv and virtualenvwrapper `pip install virtualenv virtualenvwrapper`
4. create virtual environment for project `mkvirtualenv project_name -p /opt/homebrew/opt/python@3.10/bin/python3`
5. install project requirements `pip install -r requirements.txt`

##### known issues and fixes

If your system python does not include pip, you will need to make sure pip is installed :

```console
python -m ensurepip # if your system python is at least 3.4
```

If your system python isn't at least 3.4, you will need to use your system package manager to install pip.


### windows
In this source directory:
1. [install python](https://www.python.org/downloads/release/python-3105/)
2. open project in pycharm
3. set interpreter installed python 3.10
4. open shell
5. install project requirements `pip install -r requirements.txt`

## Run tests locally
A set of instructions to run tests locally, for example:

```console
pytest
```

## Run service locally
A set of instructions to run service locally, for example:

### mac
```console
python manage.py runserver
```

### windows
```console
py manage.py runserver
```

> Code owners can be found in [CODEOWNERS file](./CODEOWNERS)





