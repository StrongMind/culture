# Testing dependencies and side effects using test doubles

## Prerequisites

<links to earlier testing topics, like "what is unit testing" either internal or external>

## Why?

In order to unit test, you need to be able to isolate the unit that you're testing. Without doing so, you have considerations like:

* having external systems have data ready for you to test with
* having speed issues because you're reaching out to external systems
* increased complexity of tests in order to ensure the whole system is in the right context
* increased complexity of local testing configuration to manage dependencies
* not being able to easily run tests in many environments for CI/CD

## TLDR, how do I understand which of these I should be using?

* Prerequisites
  * [Assertions](https://wiki.c2.com/?WhatAreAssertions)
  * [Dependencies](#dependencies)
  * [Stubs](#stubs)
  * [Fakes](#fakes)
  * [Mocks](#mocks)

```mermaid
flowchart TD
	what{What am I asserting?}
	what-->| Both |split
	what-->| A side effect |assert-side-effect
	what-->| A return value |assert-return-value
	split(Split your test into multiple tests)
	split-->what
	assert-side-effect{More than one?}
	assert-side-effect-->| Yes |split
	assert-side-effect-->| No  |assert-single-side-effect
	assert-single-side-effect{Do you have other dependencies?}
	assert-single-side-effect-->| Yes |side-effect-with-deps
	assert-single-side-effect-->| No  |side-effect-without-deps
	side-effect-with-deps(Stub or Fake deps, Mock and assert side effect system)
	side-effect-without-deps(Mock and assert side effect system)
	assert-return-value{Have dependencies?}
	assert-return-value-->| Yes |return-value-with-deps
	assert-return-value-->| No  |return-value-without-deps
	return-value-with-deps[Stub or fake deps, assert return]
	return-value-without-deps[Do not use a test double, assert return]
```



### Isolation

Isolation can happen at several levels and has different benefits at different levels. Very strict unit testing would specify that every single dependency is a fake within a test, and that all dependencies are replaceable. In some cases, you may not wish to go to this length - why would you want to still include dependencies to a class, method or system under test?

### Types of Test Doubles

[A useful article](https://blog.pragmatists.com/test-doubles-fakes-mocks-and-stubs-1a7491dfa3da) summarising different types of test doubles - this includes diagrams explaining the difference between each of these things.

Test doubles can be generated by either implementing interfaces, or using mocking frameworks to use existing objects as specifications and automatically creating test doubles.

#### Fakes

Fakes are essentially simplified versions of a system. This might be a local database that is setup and torn down at the start of every test run with fixture data. 

#### Stubs

Stubs are doubles that return information when queried and instantiated correctly.

#### Mocks

Mocks are doubles that register interactions and can be queried to make assertions against those interactions.

### Dependencies

Dependencies are anything that a class, method or function interacts with in order to operate. Examples:

* API clients
* Databases and Database Drivers
* Object Relational Mappers
* Other classes, methods or functions inside the same system

In general, if you depend on something, it is usually either because you have a side effect you are looking for you system to produce, you are using it as a contextual source of information, or it is part of the execution environment of the system.

In the piece of code we've chosen to examine, what are the dependencies of the system we're testing?

### Dependency injection (DI)

Dependency injection is a technique used to isolate classes from their dependencies. This is done by providing a mechanism to set the dependencies of a class when it is instantiated. There are several different mechanisms, and which mechanism you might use will often depend upon what is idiomatic in the language in which you are operating. Common mechanisms include

* constructor injection
* setter injection
* interface injection

These techniques might be either used either directly, with a supporting DI framework or using DI built into your application framework.

Which of these are used in the applications you work with? Do you use a framework? How well does that work for you or not and why?

#### Side effects

Side effects are effects that you want to cause in other systems or portions of your own system that are not part of the return of the method. Examples include:

* Saving records in a database
* Caching records in a caching system
* Sending a event to another system
* Sending an email.

When using test doubles with side effects, you are looking to verify that the action that the side effect that you intended to create actually happened. What side effects do you test in your systems? When do you not test side effects? What makes you decide not to test those side effects?

##### Smells

A common smell with testing side effects is that your test simply asserts the place you wanted to see a side effect got called, without asserting what parameters with which it was called, or that the system in which you wish to cause side effects was instantiated with the correct context. This can lead to tests building a false sense of security, and side effects changing or breaking without tests failing.

#### Context

Providing context to a system is often a reason for test doubles. Examples include

* Receiving messages from a system
* Loading records from a database

When using a test double to provide context, you are looking to replicate the context within which the unit runs. When your unit pulls information from a dependency, the test double returns data similar to the data you would see in a production system.

##### Smells

* Mocks set up to respond to a function without specification of what is in the parameters

  * in Python this looks a bit like this: 

    ```python
    # Mockito
    when(requests).get(...).thenReturn(response)
    ```

  * In C#, this looks a bit like this:

    ```c#
    // Moq
    something.Setup(x => x.Add(It.IsAny<string>(), It.IsAny<object>()))
    ```

    The danger of this is you could completely change what the method is asking for, and still pass all your tests

* No assertions are made against anything returning from the mock

  * In Python this looks a bit like this

    ```python
    def test_it_returns_the_status_from_the_api_in_the_result(self):
      when(api_client).get_status().thenReturn('ok')
    	
      result = sut.get_result()
      
      assert type(result) is dict
    ```

### Interception

In some cases, you're working with a system which has large classes with no injection. Typically, these systems make lots of direct calls to other parts of the system by hard coded mechanisms.
