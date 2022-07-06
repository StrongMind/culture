# Pull Requests / Code Reviews

## Elements
* Purpose
  * Does this code accomplish the author's purpose?
    * feature, refactor, bugfix, etc (behaviorial vs structural)
  * Ask questions.  
    * Does the class/function make sense?
* Implementation
  * Think about how you would have solved the problem.
  * Do you see potential use for abstractions?
  * Think about libraries or existing product code.
  * Does the change follow standard patterns?
  * Does the change add compile-time or run-time dependencies?
* Legibility and Style
  * Is it readable?
  * Does the code adhere to coding guidelines and style? (automate)
  * Does this code have TODOs?
* Maintainability
  * Read the tests.
  * Does the PR introduce the risk fo breaking test code, staging stacks or integration tests?
  * Does this change break backward compatiability?
  * Does this code new integration tests?
  * Leave feedback on code-level documentation, comments and commit messages.
  * Has the documentation been updated?
* Security
* Comments
  * Be concise.
  * Be friendly.
  * Make them actionable.

## Code Metrics
* Code Climate, etc (automate)
* Too Big of Changes (automate)

## [Pull Request Check List](../pull_request_review_checklist.md)
* Consider the tests
* Consider the code
* Consider the Changes in the Context of the System

## Questions?
* Who merges/deploys changes?
* Tied to a story?
* When to pair on changes?
