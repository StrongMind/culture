## Section 3: The Basic Tools

1. Design a small address database (name, phone number, etc) using a straightforward binary representation in your language of choice.  Do this before reading the rest of the challenge.
   * Translate that format into a plain text format using json.
   * For each version, add a new, variable-length field called directions in which you might enter the directions to each person's house.
2. What issues might come up regarding versioning and extensibility? Which form was easier to modify?  What about converting existing data?
3. Are there things that you're currently doing manually in a GUI?  Do you ever pass instructions to colleagues that involve a number of individual "click this button," "select this item" steps?  Could these be automated?
4. Whenever you move to a new environment, make a point of finding out what shells are available.  See if you can bring your current shell with you.
5. Investigate alternatives to yoru current shell.  If you come across a problem your shell can't address, see if altnerative shell would cope better.
6. Some editors use full-blow languages for customization and scripting.  Emacs, for example, uses Lisp.  As one of the new languages you are going to learn this year, learn the language your editor uses.  For anything you find yourself doing repeatedly, develop a set of macros (or equivalent) to handle it.
7. Do you know everything your editor is capable of doing?  Try to stump your colleagues who use the same editor.  Try to accomplish any given editing task in as few as keystrokes as possible.
8. What does it look like to fork a project and run your own version?  
9. What does Canvas core contributor or rails core contributor status look like?
10. Your C program uses an enumerated type to represent one of 100 states.  You'd like to be able to print out the state as a string (as opposed to a number) for debugging purposes.  Write a script that reads from standard input a file containing
```
name
state_a
state_b
```
Produce the file name.h, which contains
```
extern const char* NAME_names[];
typedef enum {
    state_a,
    state_b,
} NAME;
```
and teh file name.c, which contains
```
const char* NAME_names[]={
    "state_a",
    "state_b",
};
```
11. Modify rails scaffold to use backpack UI