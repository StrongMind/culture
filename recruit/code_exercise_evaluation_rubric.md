# What do I do during a code evaluation ?      
  - Check for the presence of a README, check if that README has good instructions on how to build/install/run tests/run project
  - Download project, make sure it builds/installs/runs
  - Run tests
  ## Evaluate tests          
    - Do they:              
      - isolate units effectively
      - set up contexts effectively
      - increase understanding of the behaviour of the system
      - speak specifically to what the system does "i.e x component should return y in this context" as opposed to "x component processes a y" or even less
      - reasonably check what the system shouldn't do
  ## Evaluate code          
    - How well do the tests cover the code?              
      - Is most or all code run by a test?
      - Could you change the code and what the code does and still pass all the tests?
    - Is the code easy to understand?              
      - Are the functions, classes, methods and attributes obviously named?
      - Is complexity refactored out?
    - Does the code use a well established design pattern (probably MVC for our tests)?              
      - Does it use it conventionally per the framework it comes from?
      - Does it use a more complex pattern than is useful?
      - Does it split up the problem effectively using the design pattern (is the logic in the model, rather than the controller, etc)
  ## Interface          
    - Is the interface simple, consistent and easy to use?
    - If there is an API, does it follow restful/resourceful conventions?              
      - is there a swagger/OpenAPI document, and/or an HTML console with documentation?
      - is the API using HTTP verbs against a resource correctly?
      - do they use hypermedia links (HATEOAS)?
