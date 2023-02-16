## Section 4: Pragmatic Paranoia

1. If DBC is so powerful, why isn't it used more widely?  Is it hard to come up with the contract?  Does it make you think about issues you'd rather ignore for now?  Does it force you to THINK?  Clearly, this is a dangerous tool!
2. What makes a good contract?  Anyone can add preconditions and postconditions, but will do you any good?  Worse yet, will they actually do more harm than good?  Decide if the following examples if the specified contract is good, bad or ugly and explain why.  
   * First' let's look at an Eiffel exmaple.  Here we have a routine for adding a STRING to a doubly linked, circular list (remember that preconditions are labeled with require, and postconditions ensure)
```
-- Add a unique item to a doubly linked list,
-- and reutrn the newly created NODE
add_item (item : STRING) : NODE is
    require
       item /= Void                   -- '/=' is 'not equal'.
       find_item(item) = Void         -- Must be unique
    deferred                          -- Abstract base class.
    ensure
        result.next.previous = result -- Check the newly
        result.previous.next = result -- added node's links.
        find_item(item) = result      -- Shoudl find it.
    end
```

* Next let's try an example in Java-somewhat similar to the example above it inserts an integer into an ordered list. Pre-and postconditions are lableled as in iContract

```
private int data[];
/**
  * @post data[index-1] < data[index] &&
  *       data[index] == aValue
  */
public Node insertNumber (final int aValue)
{
    int index = findPlaceToInsert(aValue);
    ...
```
* Here's a fragment from a stack class in Java.  Is this a good contract?

```
/**
  * @pre anItem != null     // Require real data
  * @post pop() == anItem   // Verify that it's
  *                         // on the stack
  */
public void push(final String anItem)
```
3. The classic examlpes of DBC show and implementation of an Abstract Data Type (ADT)-- typically a stack or queue.  But not many people write these kidns of low-level classes.  Design an interface to a kitchen blender.  It will eventually be a web-based, intern-enbaled blender, but for now we just need the interface to control it.  It has ten speed settings (0 means off).  You can't operate it empty, you can change the speed only unit at a time.  Here are the methods.  Add approrpriate pre- and post conditions and an invariant.
```
int getSpeed()
void setSpeed(int x)
boolean isFull()
void fill()
void empty()
```
4. How many numbers are in teh series 0,5, 10, 15... 100?
5. A quick reality check.  Which of these "impossible" things can happen?
    * A month with fewer than 28 days
    * stat(".",&sb) == -1 (taht is, can't access the current directory)
    * In C++: a = 2; b =3; if (a + b != 5) exit (1);
    * A triangle with an interior angle sum ≠ 180°
    * A minute that doesnt have 60 seconds
    * In Java: (a + 1) <= a
6. Develop a simple assertion checking class for Ruby.
7. While desigining a new container class, you idenitify the following possible error conditions:
    * No memory available for a new element in the add routine
    * Requested entry not found in the fetch routine
    * null pointer passed to the add routine
8. How should each be handled?  Should an error be generated, shoudl an exception be raised, or shoud the condition be ignored?
9. Some C and C++ developers make a point of setting a pointer to NULL after they deallocate the memory it references.  Why is this a good idea?
10. Some Java developers make a point of setting an object variable to NULL after they have finished using the object.  Why is this a good idea?
