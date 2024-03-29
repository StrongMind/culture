- How will we decide when the work is done?
	- What are the things that are true for *every* story ([[Constraints]] or Non Functional Requirements)?
		- It is in production
		- Security standards
			- FERPA
			- PCI
			- HIPAA
		- the "ilities"
			- Usability
			- Maintainability
			- Scalability
			- Availability/Reliability
			- Extensibility
			- Security
	- What are things that are true for *this* story?
		- The story should have already defined which [[user persona]] is doing a thing
			- if this covers multiple persona, then every user should be doing the same thing
				- if other people do more things, then separate stories should be made for each different thing that another user can do
		- The story should have defined what one thing the user does
		- The acceptance criteria define what does and does not happen when that user does that thing
			- reads like a testing plan
			- it should *x*
				- for example:
					- it should redirect the user to the home page
					- it should give a user a valid user session token
					- it should only allow a log in when a valid password is used
				- anti-examples:
					- be more specific:
						- it should behave like the previous system
						- it should be easy
						- it should login the user and it should send them an email and it should
