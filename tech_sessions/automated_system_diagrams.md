# Automated System Diagrams

Visualising a system, for most people, significantly reduces the amount of time it takes to understand that system. Creating maps of systems manually is time intensive work that doesn't tend to happen, and even when it does, those maps tend to rot.  Thankfully, there are lots of tools to automatically inspect and create diagrams about systems. Here are some and how to use them!

## Exercise

Create diagrams for as many of your systems as possible in this technical excellence session!

## Web Frameworks

### Django

For model graphing you can use the [`django-extensions` package](https://django-extensions.readthedocs.io/en/latest/graph_models.html) and it's `graph_models` command. An example of this can be found in the [id-mapper project README](https://github.com/StrongMind/id-mapper/blob/master/README.md).

### Rails

We have used [RailRoady](https://github.com/danmayer/railroady) in the past for generating model and controller diagrams. You can see an example of this in [our fork of canvas-lms](https://github.com/StrongMind/canvas-lms/tree/master/doc) as a collection of SVGs. It looks like this is unmaintained, so may or may not work with the latest rails projects.

Alternatives look to be [using rubymine](https://www.jetbrains.com/help/ruby/working-with-diagrams.html) (tested, seems to work reasonably well) and [Rails ERD](https://github.com/voormedia/rails-erd), which also looks like it might be out of date.

### EF Core

[EF-DB-Diagrams](https://github.com/EvAlex/ef-db-diagrams) (not yet tested). Also, there are some [built in Visual Studio Tools](https://docs.microsoft.com/en-us/visualstudio/data-tools/entity-data-model-tools-in-visual-studio?view=vs-2022). [Rider](https://www.jetbrains.com/help/rider/Diagrams.html) also has some diagramming tools.

## Infrastructure

### Terraform

Terraform provides the `terraform graph` command, which provides a graph of infrastructure items and dependencies.

### Pulumi

Pulumi provides the `pulumi stack graph` [command](https://www.pulumi.com/docs/reference/cli/pulumi_stack_graph/), which provides a graph of infrastructure items and dependencies.

### Serverless

## Database

### SQL Server Management Studio

### Azure Data Studio

(Visualization)[https://github.com/R0tenur/visualization] looks like it will do Mermaid renderings

### DataGrip

(Datagrip)[https://www.jetbrains.com/help/datagrip/creating-diagrams.html] can create ERD diagrams for any type of database that it can connect to.

