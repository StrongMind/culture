# Tidying Code

Finding small areas of disorganization you improve by cleaning things up bit by bit.

## Structure vs Behavior [Reversibility]

**Behavioral**: change means changing the way the code operates
**Structural**: rearranges and/or reorganizes the code

## Tidying vs Rewriting
### Tidying
#### Pros
- lower risk of introducing regression issues
- quick
- small changes are easy
- iterate small chunks toward larger changes
- existing tests can be reused

#### Cons
- doesn't address system design concerns

### Rewriting
#### Pros
- Fresh new outlook on the solution
- Can simplify larger sets of code
#### Cons
- higher risk of introducing regression issues
- slower
- introduces behavorial changes
- introduces breaking changes to tests

## Refactoring vs Rewriting


## Refactor Types

### NAMES
### CONDITIONS
#### Simple Case
```
  if (condition)
    many lines
  else
    one line

  if (!condition)
    one line
  else
    many lines
```
#### Preconditions
```
  if (variable)
    return variable
  else
    compute variable
  return variable

  if (variable) return variable
  compute variable
  return variable
```
#### Compute Values vs Pick a Path
```
  if (condition)
   temp = foo
  else
   temp = bar

  temp = condition ? foo : bar
```

### REDUNDANCY
### EXTRACTION
### REORDERING

## Cyclomatic Complexity
* Cyclomatic complexity is a measurement to determine the stability and level of confidence in a program.
* It measures the number of linearly-independent paths through a program module.
* Programs with lower Cyclomatic complexity are easier to understand and less risky to modify.

## TAKE AWAYS
### Structure vs Behavior [Reversibility]
* PRs only one kind of change
* Label PRs for Reviewer

### Expect:
* Smaller PRs
* Quicker PR reviews
* Harder than you think


## References

[Does this code spark joy? Tidying up your code bit by bit.](https://engineering.gusto.com/does-this-code-spark-joy)

