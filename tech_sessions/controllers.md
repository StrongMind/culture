# Controllers

## Background

Sometimes, controller code becomes confusing and unwieldy. Controllers are intended to display relevant information from the model to the user via the view and/or pass messages from the user to a model. Frameworks provide standard mechanisms to do this. For example, rails provides scaffolding.

Controllers are, by custom, focused around a resource, most often a model from a model-view-controller framework.

### Definitions

CRUD : "Create Read Update Delete", a default set of actions for a resource.

### Things to look out for

Here we'll talk about things to look out for when trying to simplify controllers. These are mostly what we might call "smells" - things that are often signs of a particular problem.

#### Calling things other than the model or user

Calling downstream (i.e. things that we are sending information to or receiving information from) classes or services other than the model or resource that the controller refers to or its user is a sign either that we are implementing the model in the controller or we are overloading a controller and should create a new controller for a different resource.

#### Actions that are not entirely verbs

An action name that doesn't consist entirely of a verb is often a sign that we are implementing models inside of a controller.

Usually, we should move more of that implementation inside of the model.

#### Actions that are routed outside of a controllers URL space

Usually, a controller for a resource has a piece of URL space routed to it. For example, if we were writing a `WidgetController` for a `Widget` model, it would be customary to route `/widget/` to the controller. When we are routing things from outside of that namespace into a controller, that often means that we are writing functionality in the incorrect controller, or that our thinking about that functionality is muddled.

#### Actions that are not CRUD

Whilst it is perfectly legitimate to have non CRUD actions for a resource, people often jump outside of CRUD before they need to without mapping the things they want to achieve onto a CRUD model. RESTful web APIs are well suited to a CRUD model - when your actions can be mapped onto CRUD model, doing so means you will be fighting frameworks less.
