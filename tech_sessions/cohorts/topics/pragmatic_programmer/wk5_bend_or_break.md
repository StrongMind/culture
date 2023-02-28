## Section 5: Bend, or Break

1. We've discussed how using delegation makes it easier to obey the Law of Demeter and hence reduce coupling.  However, writing all of the methods needed to forward calls to delegated classes is boring and error prone.  What are the advantages and disadvantages of writing a preprocessor that generates these calls automatically?  Should this preprocessor be run only once, or should it be used as part of the build?
2. We discussed the concept of physical decoupling in the box on the facing page.  Which of the following C++ header files is more tightly coupled to the rest of the system?
```
person1.h:
  #include "date.h"
  class Person1 {
    private:
        Date myBirthdate:
    public:
        Person1(Date &birthDate);
        
or

person2.h:
    class Date;
    class Person2 {
        private:
            Date *myBirthdate;
        public
            Person2(Date &birthDate);
```
3. For the example below and for those in exercises 1 and 2, determine if the method calls shown are allowed according to the Law of Demeter.  This first one is in Java.
```
public void showBalance(BankAccount acct) {
    Money amt = acct.getBalance();
    printToScreen(amt.printFormat());
}
```
4. And this one in Java
```
public class Colada {
    private Blender myBlender;
    private Vector myStuff;
    public Colada() {
        myBlender = new Blender();
        myStuff = new Vector();
    }
    private void doSomething() {
        myBlender.addIngredients(myStuff.elements());
}}
```
5. This example in C++
```
void processTransaction(BankAccount acct, int) {
    Person *who;
    Money amt;
    
    amt.setValue(123.45);
    acct.setBalance(amt);
    who = acct.getOwner();
    markWorkflow(who->name(), SET_BALANCE);
}
```
6. For you current project, consider how much of the application might be moved out of the program itself and into metadata.  Waht would the resultant "engine" look like?  Whould you be able to reuse that engine in teh context of a different application?
7. Which of the following things would be better represented as code within a program, and which external metadata?
   * Communication port assignments
   * An editor's support for highlighting the syntax of various languages
   * An editor's support for different graphic devices
   * A state machine for a parser or scanner
   * Sample values and results for use in unit testing
8. How many tasks do you perform in parallel when you get ready for work in the morning?  Could you express this in a UML activity diagram?  Can you find some way to get ready more quickly by increasing concurrency?
9. Suppose you have an airline reservation system that includes the concept of a flight. If you add a passenger to the wait list, they'll be put on the filght automatically when an opening becomes available.  There's a massive reporting job that goes through looking for overbooked or full flights to suggest when additional flights might be scheduled.  It works fine, but it takes hours to run.  We'd like to have a little more flexibility in processing wait-list passengers, and we've got to do something about that big report-- it takes too long to run.  Use the ideas from this section to redesign this interface.
```angular2html
public interface Flight {
    // Return false if flight full
    public boolean addPassenger(Passenger p);
    public void addToWaitList(Passenger p);
    public int getFlightCapacity();
    public int get NumPassengers();
}
```
10. Do you use blackboard systems in the real world -- the message board by the refrigerator, or the big white board at work?  What makes them effective?  Are messages ever posted with a consistent format?  Does it matter?
11. For each of the following applications, would a blackboard system be appropriate or not?  Why
    * Image processing.  You'd like to have a number of parallel processes grab chunks of an image, process them, and ptu the completed chunk back.
    * Group calendaring.  You've got peopel scattered across the globe, in different time zones and speaking different languages, trying to schedule a meeting.
    * Network monitoring tool.  The system gathers peformance statistics and collects trouble reports.  You'd like to implement some agents to use this information to look for trouble in the system.
