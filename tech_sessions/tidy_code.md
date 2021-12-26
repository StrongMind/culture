# Tidying Code
## Structure vs Behavior [Reversibility]
## Tidy vs Rewriting
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
