# Writing Good Models in MVC Frameworks

## Introduction

In an MVC framework, it is important to understand what code belongs in each of the pieces of the framework. 


## Overview of Each Piece

### Models

The models contain nearly all business logic and manipulate the data in the system.

This includes but is not limited to:
1. Validating data
1. Manipulating data
1. Interacting with external services
1. Interacting with other models
1. Interacting with the database

### Controllers

The controllers route external requests (primarily from views) to internal actions (primarily on models).

Controllers should handle request logic only. What is request logic? 
1. Asking models whether some action is permissible
1. Interacting with the model
1. Passing parameters and/or body from the request to the model
1. Defining response types

### Views

The views present interfaces to users. Views may have validation logic that mirrors the backend validation.

Views should handle presentation logic only. What is presentation logic?
1. Displaying data, errors, and success messages
1. Forms for creating and updating data
1. Buttons for performing actions
1. Links to other pages

## Common Maturity Levels

1. Pure CRUD models with controllers that contain all the logic and call the models simply to persist.
1. Rich models with controllers that only route requests to the models.
1. Models with common patterns refactored out into concerns.

## Smells

1. Controllers that contain business logic.
1. Controllers that interact with models with more than 2-3 lines of code.
1. Model methods that are more than 8-10 lines long.
1. Models whose methods are not mappable to CRUD actions in some way.



