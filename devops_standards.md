# DevOps Standards

As part of the [Box of Autonomy]() teams are given a starting point for choices.  This is a living and breathing set of standards.

The use of **deprecrated** will be denoted when something is no longer part of the standard but may be supported for period of time.  Items that are deprecated should no longer be used for anything new.  When possible efforts to move away from them should be done.

The use of **obsolete** will be denoted when something is no longer part of the standard and is no longer supported.  Items that are obsolete should be prioritized where it makes sense to be moved to supported technologies.

## Source Control
- Github
- Azure DevOps (**deprecated**)
- TFS (**obsolete**)

### Pair Switching
- git-duet fix


## Platform As A Service ([for all platforms, do not use their domain names (i.e azurewebsites.com or amazonaws.com) for any service](https://flipswitch.slack.com/archives/C02GC9LSTFT/p1670519806699359))
- AWS
- Azure (_Do not use "Consumption Plan" for Prod instances_)
- GoogleCloud (**deprecated**)

## Deployment container
- Docker (with HTTP on port 3000 for HTTP services)

## Continuous Integration/Deployment
- Github Actions
- Azure DevOps
- TravisCI (**obsolete**)
- Jenkins (**obsolete**)
- TFS (**obsolete**)

## Languages
- Python >= 3.7
- .NET (C#) >6
- Ruby
- Javascript >6
- Typescript
- .NET <6 (C#)(**deprecated**)
- Python <3.7 (**deprecated**)
- Javascript <6 (**deprecated**)
- Rust (**obsolete**)
- DNX (**obsolete**)

## Video/Audio/Chat Conferencing
- Zoom
- Slack
- Discord (**deprecated**)
- Teams (**obsolete**)


## Front End Frameworks
- React
- Ionic
- Blazor
- Angular >12 (**deprecated**)
- jQuery (**deprecated**)
- Aurelia (**obsolete**)
- Knockout (**obsolete**)
- Breeze (**obsolete**)
- Angular <12 (**obsolete**)

## MVC Frameworks
- Flask (**deprecated**)

## CSS Frameworks
- Bootstrap

## CSS Language
- LESS ?
- SASS ?
- SCSS ?

## CSS Icon Sets
- Font Awesome

## Logging
- Cloudwatch
- App Insights
- DataDog (**obsolete**)
- Graylog (**obsolete**) :fire:

## Exception Reporting
- Sentry
- App Insights
- Stackify (**obsolete**)

## Metrics
- Cloudwatch
- App Insights
- Grafana

## Infrastructure As Code
- Terraform (**deprecated**)
- Pulumi
- Serverless (**deprecated**)
- Azure Resource Manager (?)
- Ansible (**deprecated**)

## Flow Visualization
- Lucid Chart
- Mermaid.js
- Draw.io (**obsolete**)
- GraphViz (**obsolete**)

## Application URLs
- <environment>-<app-name>.strongmind.com for lower environments
- <app-name>.strongmind.com for production environments
