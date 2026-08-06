# DevOps Standards

As part of the [Box of Autonomy](box_of_autonomy.md) teams are given a starting point for choices.  This is a living and breathing set of standards.

The use of **deprecrated** will be denoted when something is no longer part of the standard but may be supported for period of time.  Items that are deprecated should no longer be used for anything new.  When possible efforts to move away from them should be done.

The use of **obsolete** will be denoted when something is no longer part of the standard and is no longer supported.  Items that are obsolete should be prioritized where it makes sense to be moved to supported technologies.

## Platform Documentation
- [EKS Platform](https://strongmind.atlassian.net/wiki/spaces/SMI/pages/4714397758/EKS+Platform) (Confluence, SMI space) — clusters, access, GitOps flow, and how to onboard a workload
- [Platform Onboarding](https://strongmind.atlassian.net/wiki/spaces/SMI/pages/4716036098) — get `kubectl` access to the clusters
- [Architecture Decision Records](https://github.com/StrongMind/strongmind-platform/tree/main/docs/adr) — the org decision log: why we build the way we do
- [strongmind-platform](https://github.com/StrongMind/strongmind-platform) — Pulumi infrastructure code, Argo CD manifests, Kargo pipelines

## Source Control
- Github
- Azure DevOps (**obsolete**)
- TFS (**obsolete**)

## REST API Standards
- [Best Practices](https://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)

## Pair Switching
- git-duet fix


## Platform As A Service ([for all platforms, do not use their domain names (i.e azurewebsites.com or amazonaws.com) for any service](https://flipswitch.slack.com/archives/C02GC9LSTFT/p1670519806699359))
- AWS
- Azure (**deprecated**)
- GoogleCloud (**deprecated**)

## Compute Runtime
- Amazon EKS (Kubernetes) — the standard runtime for platform and new services ([ADR-0006](https://github.com/StrongMind/strongmind-platform/blob/main/docs/adr/ADR-0006-eks-as-the-platform-runtime-gitops-on-kubernetes.md))
  - `us-west-2`, separate clusters per environment in separate AWS accounts: staging (058264302180) and production (221871915463)
  - Cluster endpoints are private — VPN is required for all cluster access
  - See [EKS Platform](https://strongmind.atlassian.net/wiki/spaces/SMI/pages/4714397758/EKS+Platform)
- AWS ECS (**deprecated**) — existing workloads migrate to EKS over time

## Local CLI Tooling (EKS access)
- VPN — required; all cluster endpoints are private
- AWS CLI v2 with AWS SSO, `Developer` role in the staging and production accounts
- kubectl
- Helm
- Step-by-step: [Platform Onboarding](https://strongmind.atlassian.net/wiki/spaces/SMI/pages/4716036098)

## Deployment container
- Docker (with HTTP on port 3000 for HTTP services)

## Container Registry
- Amazon ECR
- Release images are tagged SemVer; Kargo detects the new tag and starts the promotion

## Continuous Integration (build and test)
- Github Actions
  - Default runner: `ubuntu-latest`
  - `mgmt-runners` — self-hosted runners running inside the management cluster. Use only when CI needs VPC-private or in-cluster access; a repo needs to be granted access first. See [ARC Self-Hosted Runners](https://strongmind.atlassian.net/wiki/spaces/SMI/pages/4714201135)
- Azure DevOps (**obsolete**)
- TravisCI (**obsolete**)
- Jenkins (**obsolete**)
- TFS (**obsolete**)

## Continuous Deployment (EKS)
GitOps only. Git is the source of truth for cluster state; no manual `kubectl apply` or `helm upgrade` against a cluster ([ADR-0006](https://github.com/StrongMind/strongmind-platform/blob/main/docs/adr/ADR-0006-eks-as-the-platform-runtime-gitops-on-kubernetes.md)).
- Argo CD — syncs each cluster to match Git. Runs on the management cluster; staging and production are managed targets
- Kargo — promotes a release staging → production. Staging auto-promotes; production is a manual approval gate ([ADR-0009](https://github.com/StrongMind/strongmind-platform/blob/main/docs/adr/ADR-0009-git-based-kargo-promotion.md))
- To deploy a service: commit an Argo CD `Application` manifest under `deploy/argocd/staging/` or `deploy/argocd/prod/` in [strongmind-platform](https://github.com/StrongMind/strongmind-platform) and merge to `main`. The cluster's root application creates it automatically
- Database migrations run as an Argo CD PreSync hook, not from CI ([ADR-0018](https://github.com/StrongMind/strongmind-platform/blob/main/docs/adr/ADR-0018-database-migrations-as-an-argo-cd-presync-hook.md))
- Consoles (VPN required): [Argo CD](https://argocd-mgmt.prod.internal.strongmind.com) · [Kargo](https://kargo-mgmt.prod.internal.strongmind.com) — log in with your StrongMind account

## Languages
- Python >= 3.8
- .NET (C#) >6
- Ruby >3
- Javascript >6
- Typescript >= 5
- Go >= 1.25
- Node.js >= 20
- .NET <6 (C#)(**deprecated**)
- Ruby <3 (**deprecated**)
- Python <3.8 (**deprecated**)
- Javascript <6 (**deprecated**)
- Rust (**obsolete**)
- DNX (**obsolete**)

## Ruby Gems
[See Ruby Gems](gems.md)

## Video/Audio/Chat Conferencing
- Zoom
- Slack
- Discord (**deprecated**)
- Teams (**obsolete**)


## Front End Frameworks
- React >= 18 (>=19 default for new work)
- Ionic
- Blazor
- Next.JS
- Angular >12 (**deprecated**)
- jQuery (**deprecated**)
- Aurelia (**obsolete**)
- Knockout (**obsolete**)
- Breeze (**obsolete**)
- Angular <12 (**obsolete**)

## MVC Frameworks
- Rails
- Flask (**deprecated**)

## CSS Frameworks
- Tailwind CSS + Backpack UI (as Tailwind Plugin)
- Bootstrap (**obsolete**)

## CSS Language
- LESS ?
- SASS ?
- SCSS ?

## CSS Icon Sets
- Font Awesome

## Observability (Logs, Metrics, Traces)
Instrument with OpenTelemetry; export to Datadog ([ADR-0004](https://github.com/StrongMind/strongmind-platform/blob/main/docs/adr/ADR-0004-observability-standard.md)).
- OpenTelemetry — the instrumentation standard for all three signals. Do not use vendor SDKs directly
- Datadog — the backend for all three signals
  - On EKS the Datadog Agent runs as a cluster DaemonSet. Scope any query by `kube_cluster_name:platform-eks-<env>` or `env:<stage|prod>`
  - Legacy ECS uses the Datadog APM task sidecar
  - Monitors are defined in version control next to the service, never hand-created in the UI
- Structured JSON logs with `service`, `env`, `version`, `trace_id`, `span_id`, via the shared logging packages (`strongmind-platform/go/log`, `@StrongMind/logging`)
- Cloudwatch — AWS infrastructure logs and metrics
- Grafana
- App Insights (**deprecated**) — Azure-only; Azure is already deprecated as a platform
- Graylog (**obsolete**) :fire:

## Exception Reporting
- Sentry
- App Insights (**deprecated**)
- Stackify (**obsolete**)

## Infrastructure As Code
- Pulumi — AWS infrastructure (`deploy/platform`), state in per-account S3 backends
- Helm — Kubernetes packaging (charts plus per-cluster values files)
- Argo CD `Application` manifests — what runs in a cluster. Changes go through Git, never `kubectl` or `helm upgrade` against a live cluster
- Vercel
- Azure Resource Manager (?)
- Serverless (**deprecated**)
- Ansible (**deprecated**)
- Terraform (**deprecated**)

## Flow Visualization
- Lucid Chart
- Mermaid.js
- Draw.io (**obsolete**)
- GraphViz (**obsolete**)

## Application URLs
- `<app-name>.strongmind.com` — public, production
- `<environment>-<app-name>.strongmind.com` — public, lower environments
- `<app-name>.<stage|prod>.internal.strongmind.com` — internal, VPN-only services on EKS (e.g. `platform-admin.stage.internal.strongmind.com`)
- Never use a cloud provider's own domain (`azurewebsites.com`, `amazonaws.com`) for any service
- On EKS, DNS records are created from the Ingress by external-dns. Do not hand-edit Route 53

## IDE
- JetBrains
  - For Pairing/Mobbing
  - Installed on Machine by Default

## Databases
### SQL
- Postgres
- SQL Server (**deprecated**)
- CosmosDB (**deprecrated**)
### Reporting
- SnowFlake
- SQL Server (**deprecated**)

## Testing Tools
- PyTest Describe (Python)
- Jest (Javascript)
- Vitest (Javascript/Typescript)
- go test + testify (Go)
- Rspec (Ruby)
- xUnit (.NET)
- nUnit (.NET)

## Mocking Tools

## Desktop Operating System (Machine Type Intel/M1)

## Secret Credential Stores
- AWS Secret Manager
  - In Kubernetes, the External Secrets Operator syncs Secrets Manager values into cluster secrets. No secrets in Git, ever
  - Machine-to-machine credentials use GitHub Apps, never personal access tokens

## Virtual Environment Manager (rbenv, pyenv,etc)
- rbenv (ruby)
- venv (python)
- nvm (node)
- Volta (node)

## Package Management
- pypi.org (python)
  - Requires Makefile with a test and install option.
  - Package name prefix "strongmind-"
- nuget.org (.net)
  - Package ID prefix "SM."
- rubygems.org (ruby)
- go modules (go)
  - `github.com/StrongMind/strongmind-platform/go`, consumed via `go get`
  - Versioned by path-prefixed git tags (`go/vX.Y.Z`), not a central registry (see ADR-0002)
- GitHub Packages (javascript/typescript)
  - `@strongmind/*` scoped packages, consumed by version, never by repo path (see ADR-0002)

## Web Packaging (npm, yarn, etc)
- npm

## Repo Naming
- dashes not under scores

## Repository Locations
- Windows: `C:\Users\<user>\Documents\GitHub`
- Mac: `/Users/<user>/github`
- Linux: `/home/<user>/github`

## Other Issues
* Instructions for Installing Languages & Frameworks
* Developer Setup
* Deployment Standards
* Terminal Config Settings
* PR Process
* Local Environment Variables
