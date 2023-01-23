# Test context and fixtures
Reducing test setup with nested contexts and variables can reduce cognitive load making tests easier to read and maintain, reducing errors in tests.

Context variables also provide the ability to change only small parts of the context, reducing the need for large duplicated setup blocks.

## Terms

* Context : the environment within which a test is run, including the test subject, any mocks, and any variables.
* Context variable : a variable that is scoped to the context and child contexts, that is used in a test. (In RSpec, these are called `let` variables. In pytest, these are called fixtures.)

## Moving towards this from a codebase using other testing patterns

### Identify which stage of maturity your tests are in

* **Stage 1** : Tests are written in a single test method, with setup and assertions mixed together. There are many assertions in a single method.
* **Stage 2** : Tests are split into several methods reflecting different groupings of assertions with setup included in the methods.
* **Stage 3** : Tests are split into several methods with setup in a method.
* **Stage 4** : Tests are split into many methods, named for the specific things they are asserting (usually only one or two assertions per method).
* **Stage 5** : Context variables are lazy loaded and extracted from the setup.
* **Stage 6** : Context are nested, to allow minimized duplication, and to allow context variables to be overridden.

### Examples of each stage

- [Ruby Examples](test_fixtures_ruby_examples.md)
- [Python Examples](test_fixtures_python_examples.md)

#### Split apart test methods into smaller methods (Stage 1 > 2)

#### Extract setup into a `setup` method (Stage 2 > 3)

#### Extract assertions into well-named separate methods (Stage 3 > 4)

#### Extract context variables (Stage 4 > 5)

#### Nest contexts (Stage 5 > 6)

## Other tips

Consider extracting the system under test or the result from the system under test into a context variable. Rspec in particular provides easy mechanisms to do this, this can give you the opportunity to reduce the size of your test methods to one line, significantly decreasing the cognitive load of reading the test.
