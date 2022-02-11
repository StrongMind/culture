# Pull Request Review Checklist

## Consider the Tests

- Do the tests pass?
- Do the tests only test hard coded values?
	- consider whether you should have random test values
- Do the tests describe the operation of the system in a way that people who come after us will be able to understand what the system is supposed to do?
- Do the tests help us understand why the system is built to behave that way?
- Do the tests cover reasonable expected failure scenarios?

## Consider the Code

- Does the code do anything the tests don't say it does (is all code in response to a test?)
	- Can I see ways in which I could change the functionality of the program by mutating it that would change the functionality and still pass the tests?
	- Can I run mutation testing to be sure?
	- Can I remove random lines of code and tests still pass?
- Is the code easy to understand?
	- Does it pass automated complexity checks?
	- Does it use naming that makes the usage of methods, attributes, classes and variables obvious?
	- Does it have confusing constructs like double negatives?
- Is the code idiomatic and unsurprising?
	- much of this can be covered by tools like [[CodeClimate]], but there are some cases where we might choose to do something that is more idiomatic in a language
	- Python
		- do things that mean singular gets raise exceptions if there are none or more than 1?
- Are there any design patterns that your team is attempting to eliminate present in this code?
	- did we introduce any? Can we not?
	- is this a reasonable time to improve the design of this part of the system?
- Does the design of the system match the one agreed to in planning?

## Consider the Changes in the Context of the System

- Do the changes in this system require communication to partner success?
- Do the changes in this system change the contracts (explicit or implicit) that your system has with other systems in the larger ecosystem?
	- for things your system is receiving?
	- for things your system is sending?
- Do the changes in this system require changes in the underlying data or data structures?
	- if so, do we have migration scripts?
		- If yes, will those scripts be automatically run by CI/CD?
		- If no, can we reasonably make some?
			- If not, have we documented the changes required in databases and arranged that they will happen at the appropriate point in the release?
- Do the changes in this system require changes in the underlying infrastructure?
	- If so, do we have IaC or system scripts?
		- If yes, will those scripts be automatically run by CI/CD?
		- If no, can we reasonably make some?
			- If not, have we documented the changes required in the infrastructure and arranged that they will happen at the appropriate point in the release?
- Do the changes in this system have potentially significant performance or cost gains or losses?
	- who needs to know about that?
	- Is that okay?
