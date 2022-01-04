# Pair Programming

## What Is It?
Pair programming is an agile software development technique in which two programmers work together at one workstation. One, the driver, writes code while the other, the observer or navigator, reviews each line of code as it is typed in. The two programmers switch roles frequently.

While reviewing, the observer also considers the "strategic" direction of the work, coming up with ideas for improvements and likely future problems to address. This is intended to free the driver to focus all of their attention on the "tactical" aspects of completing the current task, using the observer as a safety net and guide.

**"Pair programmers: Keep each other on task. Brainstorm refinements to the system. Clarify ideas. Take initiative when their partner is stuck, thus lowering frustration. Hold each other accountable to the team’s practices. Pairing" -- Kent Beck**

## Economics
Pair programming increases the person-hours required to deliver code compared to programmers working individually. However, the resulting code has fewer defects. Along with code development time, other factors like field support costs and quality assurance also figure in to the return on investment. Pair programming might theoretically offset these expenses by reducing defects in the programs.

In addition to preventing mistakes as they are made, other intangible benefits may exist. For example, the courtesy of rejecting phone calls or other distractions while working together, taking fewer breaks at agreed-upon intervals, or shared breaks to return phone calls (but returning to work quickly since someone is waiting). One member of the team might have more focus and help drive or awaken the other if they lose focus, and that role might periodically change. One member might have knowledge of a topic or technique which the other does not, which might eliminate delays to find or test a solution, or allow for a better solution, thus effectively expanding the skill set, knowledge, and experience of a programmer as compared to working alone. Each of these intangible benefits, and many more, may be challenging to accurately measure, but can contribute to more efficient working hours.

Laurie Williams of the University of Utah in Salt Lake City has shown that paired programmers are only 15% slower than two independent individual programmers, but produce 15% less mistakes


## Quality
A system with two programmers possesses greater potential for the generation of more diverse solutions to problems for three reasons:

1. the programmers bring different prior experiences to the task;
2. they may assess information relevant to the task in different ways;
3. they stand in different relationships to the problem by virtue of their functional roles.

In an attempt to share goals and plans, the programmers must overtly negotiate a shared course of action when a conflict arises between them. In doing so, they consider a larger number of ways of solving the problem than a single programmer alone might do. This significantly improves the design quality of the program as it reduces the chances of selecting a poor method.

## Satisfaction
In an online survey of pair programmers from 2000, 96% of programmers stated that they enjoyed work more while pair programming than programming alone. Furthermore, 95% said that they were more confident in their work when they pair programmed.

## Learning
Knowledge is constantly shared between pair programmers, whether in the industry or in a classroom. Many sources suggest that students show higher confidence when programming in pairs, and many learn whether it be from tips on programming language rules to overall design skill.In "promiscuous pairing", each programmer communicates and works with all the other programmers on the team rather than pairing only with one partner, which causes knowledge of the system to spread throughout the whole team. Pair programming allows programmers to examine their partner's code and provide feedback, which is necessary to increase their own ability to develop monitoring mechanisms for their own learning activities.

## Team Building
Pair programming allows team members to share quickly, making them less likely to have agendas hidden from each other. This helps pair programmers learn to communicate more easily. "This raises the communication bandwidth and frequency within the project, increasing overall information flow within the team.

## Smells
There are indicators that a pair is not performing well:[opinion]

* Disengagement may present as one of the members physically withdraws away from the keyboard, accesses email, or even falls asleep.
* The "Watch the Master" phenomenon can arise if one member is more experienced than the other. In this situation, the junior member may take the observer role, deferring to the senior member of the pair for the majority of coding activity. This can easily lead to disengagement.
* both programmers must be actively engaging with the task throughout a paired session, otherwise no benefit can be expected
* a simplistic but often raised objection is that pairing “doubles costs”; that is a misconception based on equating programming with typing – however, one should be aware that this is the worst-case outcome of poorly applied pairing
* at least the driver, and possibly both programmers, are expected to keep up a running commentary; pair programming is also “programming out loud” – if the driver is silent, the navigator should intervene **A Noisy Pair, Is a Good Pair**
* pair programming cannot be fruitfully forced upon people, especially if relationship issues, including the most mundane (such as personal hygiene), are getting in the way; solve these first!

## Pairing Variations
### Expert–expert
Expert–expert pairing may seem to be the obvious choice for the highest productivity and can produce great results, but it often yields little insight into new ways to solve problems, as both parties are unlikely to question established practices.

### Expert–novice
Expert–novice pairing creates many opportunities for the expert to mentor the novice. This pairing can also introduce new ideas, as the novice is more likely to question established practices. The expert, now required to explain established practices, is also more likely to question them. However, in this pairing, an intimidated novice may passively "watch the master" and hesitate to participate meaningfully. Also, some experts may not have the patience needed to allow constructive novice participation.

### Novice–novice
Novice–novice pairing can produce results significantly better than two novices working independently, although this practice is generally discouraged because it is harder for novices to develop good habits without a proper role model.

## Styles

### Classic
Generally, pair programming has been popularized through the driver-navigator technique. Ideally both the team members should switch their duties for better results.

In this style of pair programming, the navigator instantly loses his or her interest. That’s possibly because the person in charge of typing isn’t communicating, or perhaps the reviewer doesn’t want to bother him. Many times I’ve observed where the driver put forth ‘just a minute, I’ve got an idea’ and keep on working, the navigator check their social accounts or do some other irrelevant tasks.

Well, to efficiently carry out this style of pair programming, communication is what that makes all the difference. Sadly, this level of interaction isn’t inevitably inherent to a fresh pair. Due to this powerful communication specification, I usually consider this type to be a more transitional way of doing pair programming and I instruct beginners to stay away from it.

### Stong Style
Strong-style pairing is the approach in which the driver does nothing that the reviewer did not direct them to. As explained by Llewellyn, “For an idea to go from your head to the computer it must go through someone else’s hands.”

Whenever the driver requires pitching in the idea, he must handover the system to his partner and then carryout the control from the observer position. This approach completely engages the observer.

Traditional approach, on the other hand, requires the navigator to ask for the system to give his input or implement his idea.

### Ping Pong
One more pair programming pattern frequently employed by developers is the ping pong pairing. In this approach, the driver drafts a test for behavior and requests the reviewer to apply the behavior. Once implemented, the navigator takes his turn and the new driver jot down the next test for the fresh navigator to apply.

The problem is making time to refactor both code and do testing is the biggest challenge with this pattern. In fact sometimes I invest more time on the test refactoring than the coding. Implementing a feature can be complicated and it will make testing complex too. It’s simpler to carry on a progressive momentum where properties are being applied, but we also require paying attention to the simplicity of the code so that it can be effortlessly maintained in the long run. The similar idea also applies to the testing part.

In short Ping-Pong pairing helps professionals keep an eye on both the coding as well as the testing elements. Plus, it also helps individuals in doing TDD efficiently.

### Best Practices
* **Consistent communication.** If there is no communication going on, then the developers are likely not sharing thought processes.
* **Switch roles consistently.** This promotes the sharing of more skills between developers and keeps them engaged.
* **Pair up carefully.** Ensure the two developers will be able to work together well, without any hiccups. Otherwise, this will make for a poor work environment.
* **Use a familiar development environment.** Both developers should be familiar with the environment they are working in. Otherwise, the balance of pair programming will be disrupted.
* **Submit code frequently.** Quick commits to code pair well with switching between the driver and the navigator.
* **Ask for clarification when needed.** Particularly when a novice works with an expert, the novice should take any opportunity to learn.
* **Take breaks when needed.** Work at a pace that fits both developers.

## Remote Pairing
Yeah it sucks. #kthxbai 
