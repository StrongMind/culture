## Section 2: A Pragmatic Approach

1. Consider the difference between large GUI-oriented tools typically found on Windows systems and small but combinable command line utilities used at shell prompts. 
   * Which set is more orthogonal, and why? 
   * Which is easier to use for exactly the purpose for which it was intended
   * Which set is easier to combine with other tools to meet new challenges?
2. C++ supports multiple inheritance, and Java allows a class to implement multiple interfaces.
    * What impact does using these facilities have on orthogonality?
    * Is there a difference in impact between using multiple inheritance and multiple interfaces?
    * Is there a difference between using delegation and using inheritance?
3. You are writing a class called Split, which splits input lines into fields. Which of the following two Java class signatures is the more orthogonal design?

``` 
class Split1 {
    public Split1(InputStreamReader rdr) {...
    public void readNextLine() throws IOException {...
    public int numFields() {...
    public String getField(int fieldNo) {...
}

class Split2 {
    public Split2(String line) {...
    public int numFields () {...
    public String getField(int fieldNo) {...
}
```
4. Which will lead to a more orthogonal design: modeless or modal dialog boxes?
5. How about procedural languages versus object technology? 
   * Which results in a more orthogonal system?
6. Reflect on:

Time for a little quantum mechanics with Schrödinger's cat. Suppose you have a cat in a closed box, along with a radioactive particle. The particle has exactly a 50% chance of fissioning into two. If it does, the cat will be killed. If it doesn't, the cat will be okay. So, is the cat dead or alive? According to Schrödinger, the correct answer is both. Every time a sub-nuclear reaction takes place that has two possible outcomes, the universe is cloned. In one, the event occurred, in the other it didn't. The cat's alive in one universe, dead in another. Only when you open the box do you know which universe you are in. No wonder coding for the future is difficult. But think of code evolution along the same lines as a box full of Schrödinger's cats: every decision results in a different version of the future.

  * How many possible futures can your code support?
  * Which ones are more likely? How hard will it be to support them when the time comes? 
  * Dare you open the box?

7. Marketing would like to sit down and brainstorm a few Web-page designs with you. They are thinking of clickable image maps to take you to other pages, and so on. But they can't decide on a model for the image—maybe it's a car, or a phone, or a house. You have a list of target pages and content; they'd like to see a few prototypes. Oh, by the way, you have 15 minutes. What tools might you use?
8. Could some of the requirements of your current project be expressed in a domain-specific language? Would it be possible to write a compiler or translator that could generate most of the code required?
9. If you decide to adopt mini-languages as a way of programming closer to the problem domain, you're accepting that some effort will be required to implement them. Can you see ways in which the framework you develop for one project can be reused in others?
10. If you decide to adopt mini-languages as a way of programming closer to the problem domain, you're accepting that some effort will be required to implement them. Can you see ways in which the framework you develop for one project can be reused in others?
```
P 2 # select pen 2
D   # pen down
W 2 # draw west 2cm
N 1 # then north 1
E 2 # then east 2
S 1 # then back south
U   # pen up
```
11. Design a BNF grammar to parse a time specification. All of the following examples should be accepted. (4pm, 7:38pm, 23:42, 3:16, 3:16am)
12. Implement a parser for the BNF grammar in #11 using yacc, bison or a similar parser-generator.
13. Implement the time parser using Ruby. [Hint: regular expressions make good parsers]
14. Start keeping a log of your estimates.  For each, track how accurate you turned out to be.  If your error was greater than 50%, try to find out where your estimate went wrong.
15. You are asked "Which has a higher bandwidth: a 1Mbps communications line or a person walking between two computers with a full 4GB tape in their pocket?" What constraints will you put on your answer to ensure that the scope of your response is correct? (For example, you might say that the time taken to access the tape is ignored.)
16. So, which has the higher bandwidth?