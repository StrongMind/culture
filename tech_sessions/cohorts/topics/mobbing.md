# Mobbing

Mob programming (informally mobbing) is a software development approach where the whole team works on the same thing, at the same time, in the same space, and at the same computer. This is similar to [pair programming](https://github.com/StrongMind/culture/blob/master/tech_sessions/pair_programming.md) where two people sit at the same computer and collaborate on the same code at the same time. With mob programming, the collaboration is extended to everyone on the team, while still using a single computer for writing the code and inputting it into the code base.

*"The basic concept of mob programming is simple: the entire team works as a team together on one task at the time. That is: one team – one (active) keyboard – one screen (projector of course)" -- Marcus Hammarberg*

All the brilliant minds working on:
* the same thing
* at the same time
* in the same space (camera always on if remote)
* on the same computer

Mobbing is a technique used in small teams to involve the whole team with problem solving.

The style of Mobbing that I have witnessed to have the most success works like this :

## Simple Rules
* Use strict Driver/Navigator
* Rotate AT LEAST every 7-10 minutes
* Use a timer
* Use a single computer

*Note: If you are needed, contributing or learning, stay with the team, otherwise split off and work solo or with a pair.*

## Roles

### Driver

The drivers job is to act as hands for the navigator. They focus on the short term tactical goal the team has, in the same way as a driver from the driver/navigator pairing style.

The driver does not write any code that they are not instructed to write by the navigator. This is particularly important if the driver is a more experienced programmer than the navigator, as this can lead to "watch the master" style mobbing or pairing which will lead to fast disengagement.

**"For an idea to go from someone's head into the computer it must got through someone else's hands." -- Llewellyn Falco**

In addition to the considerations normally applied to the driver navigator pairing style, the driver does not initiate conversation with the mob and the mob does not initiate conversation with the driver. This helps to avoid unstructured and undirected conversation in the mob, and allows the driver to stay focussed on the driver role.

### Navigator

The navigators job is to direct the mob towards the larger goal the mob has, following the plan the mob has agreed upon beforehand.  The navigator holds the goal in their mind, and directs the driver toward the goal, drawing upon the resources of the remaining members of the mob.

The navigator asks questions of the mob to draw upon the mobs expertise and to create consensus when they feel that the plan does not cover the work that needs to be done in order to meet the larger goal.

### Mob

The role of the remaining members of the mob is to be a resource for the navigator to draw upon in order to achieve the mobs stated goal.  It is important to understand that unstructured conversation between the mob and others can detract forward movement.

If a member of the mob is concerned about a direction that the mob is taking, I have seen it be much more productive to raise a hand, rather than just interrupt the navigator and driver, and for the concern to be represented as a question. "If we do this this way, how will we avoid x problem?".

## Patterns

### Decomposition and planning
Decompose problems before you start. Know before you walk in which objects you are likely to create and either draw them out and how they relate to each other, or write them down. Make sure the illustration or description is easily viewable by the whole team. Stand at a whiteboard and have people do this activity, or if remote, use a remote whiteboarding tool like google jamboard or something better. These should be low-fidelity for speed and flexibility.

### Timeboxing and Rotation
Before starting a session, agree upon an amount of time for each session and rotation, and agree when you will take breaks.

Generally, a rotation where the next driver is the previous navigator helps a pattern of engagement.  Start with a rotation of 5 minutes and shorten or lengthen as necessary. If team members are struggling with engagement consider shortening rotations. If team members are not able to get anything meaningful accomplished in a rotation, both lengthen the rotation and retrospect about what could make things move faster.

Use audible timers to ensure rotations are followed.

### Short mob retrospectives

### Ergonomics and Resistance

## Red and Green flags

### Observable Green Flag behaviors

1. Clear goals and direction: Everyone in the group should have a clear understanding of the task at hand and what is expected of them.
2. Effective communication: Regular check-ins and open communication can help ensure everyone is on the same page and minimize misunderstandings.
3. Collaboration: Encourage a supportive and collaborative environment where everyone is encouraged to contribute their ideas and thoughts.
4. Active listening: Pay attention to what others are saying and show interest in their opinions.
5. Encouragement of diversity of thought: Foster an environment where different perspectives are valued and encouraged.
6. Flexibility and adaptability: Be open to change and new ideas.
7. Regular role rotations: Regularly rotating the driver role can help prevent burnout and ensure everyone has a chance to participate and contribute.
8. Active participation: Encourage everyone to actively participate and contribute, rather than just passively observing.
9. Respectful behavior: Treat others with respect and refrain from behavior that could be considered disruptive or disrespectful.
10. Continual improvement: Regularly reflect on the process and seek ways to improve it to ensure maximum effectiveness.

### Observable Red Flag behaviors

1. Lack of focus or direction: If the group is not clear on the task at hand or is easily sidetracked, it can hinder productivity and slow down the process.
2. Unclear roles and responsibilities: Everyone in the group should have a clear understanding of their role and what is expected of them.
3. Unproductive discussions or arguments: If discussions or arguments arise that do not contribute to the solution, it can waste time and create tension within the group.
4. Dominance of a single person: If one person is dominating the conversation and not allowing others to contribute, it can lead to imbalanced contributions and reduce the effectiveness of the mob programming.
5. Poor communication: Miscommunication can lead to confusion and mistakes. Regular check-ins and open communication can help avoid this.
6. Resistance to change: If individuals in the group are resistant to new ideas or changes, it can slow down the progress of the mob programming.
7. Failure to rotate drivers: If the driver role is not rotated regularly, it can lead to burnout and decreased productivity.

## Advantages and Disadvantages of mobbing vs pairing
### Advantages
* Improves communication problems
* Improves decision making problems
* Allows doing more than is barely sufficient.
* Reduces technical debt.
* Reduces context shifting.
* Forces politics to be addressed quickly.
* Reduces need for meetings.

### Disadvantages
* May not be best use of time
* Difficult to do well remotely
* Can exacerbate team issues (unresolved conflict)
