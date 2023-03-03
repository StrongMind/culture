## Section 6: While You Are Coding

1. Can you identify some coincidences in the following C code fragment? Assume that this code is buried deep in a library routine.
```
fprint(stderr, "Error, continue?");
gets(buf);
```
2. This piece of C code might work some of the time, on some machines.  Then again, it might not.  What's wrong?
```angular2html
/* Truncate string to its last maxlen chars */
void string_tail(char *string, int maxlen) {
    int len = strlen(string);
    if (len > maxlen) {
        strcpy(string, string + (len - maxlen));
    }
}
```
3. This code comes from a general-pupose Java tracing suite.  The function writes a string to a log fil.  It passes its unit test, but fails when one of the Web developers users it.  What coincidence does it rely on?
```angular2html
public static void debug(String s) throws IOException {
    FileWriter fw = new FileWriter("debug.log", true);
    fw.write(s);
    fw.flush();
    fw.close();
}
```
4. Every developer should have a feel for how algorithms are designed and analyzed.  Robert Sedgewick has written a series of accessible books on teh subject.  We recommend adding one of his books to your collection and making a point of reading it.
5. For those who like more detail than Sedgewick provides, read Donald Knuth's definitive Art of Computer Programming books, which analyze a wide range of algorithms.
6. In exercise 7 below, we look at sorting arrays of long integers.  What is the impact if the keys are more complex, and the overhead of a key comparison is high?  Does the key structure affect the efficiency of the sort algorithms?
7. We have codded a set of simple sort routines, which can be downloaded from http://www.pragmaticprogrammer.com.  Run them on various machines available to you.  Do your figures follow the expected curves?  What cna you deduce about the relative speeds of your machines?  What are the effects of various compiler omptization settings?  Is the radix sort indeed linear?
8. The routine below prints out the contens of a binary tree.  Assuming the tree is balanced, roughtly how much stack space will the routine use while printing a tree of 1,000,000 elements?  (Assume that the subroutine calls impose no significant stack overhead)
```angular2html
void printTree(const Node *node) {
    char buffer[1000];
    if (node) {
        printTree(node->left);
        getNodeAsString(node, buffer);
        puts(buffer);
        printTree(node->right);
    }
}
```
9. Can you see any way to reduce the stack requiremetns of the routine in Exercise 8 (apart from reducing the size of the buffer)?
10. On page 180, we claimed that a binary chop is O(lg(n)).  Can you prove this?
11. Refactor this:
```angular2html
if (state == TEXAS) {
    rate = TX_RATE;
    amt = base * TX_RATE;
    calc = 2*basis(amt) + extra(amt)*1.05
}
else if ((state == OHIO) || (state == MAINE) {
    rate = (state == OHIO) ? OH_RATE : ME_RATE;
    amt = base * rate;
    calc = 2*basis(amt) + extra(amt)*1.05;
    if (state == OHIO)
        points = 2;
}
else {
    rate = 1;
    amt = base;
    calc = 2*basis(amt) + extra(amt)*1.05;
}
```
12. The following Java class needs to support a few more shapes.  Refactor the class to prepare it for the additions.
```angular2html
public class Shape {
    public static final int SQUARE = 1;
    public static final int CIRCLE = 2;
    public static final int RIGHT_TRIANGLE = 3;
    private int shapeType;
    private double size;
    public Shap(int shapeType, double size) {
        this.shapeType = shapeType;
        this.size = size;
    }
//... other methods...
    public double area() {
        which (shapeType) {
        case SQUARE: return size*size;
        case CIRCLE: return Math.PI*size*size/4.0;
        case RIGHT_TRIANGLE: return size*size/2.0;
        }
        return 0;
    }
}
```
13. This Java code is part of a framework that will be used throughout your project.  Refactor it to be more general and easier to extend in the future.
```angular2html
public class Window {
    public Window(int width, int height) {...}
    public void setSize(int width, int height) {...}
    public boolean overlaps(Window w) {...}
    public int getArea() {...}
}
```
14. Design a test jig for the blender interface described in the answer to Exercise 17 on page 289.  Write a shell script that will perform a regression test for teh blender.  You need to test basic functionality, error and boundary conditions, and any contractual obligations.  What restrictions are placed on chanign teh speed?  Are they being honored?
15. If hou have a GUI-building wizard available, use it to generate a skeleton application. Go through every line of code it productes.  Do you understand it all?  Could you have produced it by yourself?  Woul dyou have producted it yoruself, or is it doing things you don't need?