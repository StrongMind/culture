# Decomposition

Decompose these stories into small tasks that you estimate will take no more than 2 hours per task.

As a user I can Log In to the system.

Acceptance Criteria

* When I visit the system at any URL, and I am not logged in, I am redirected to a log-in form at https://domain.com/login/ . 
* The log in form allows me to log in using my email and a password. 
* When I log in to the system, I am redirected to the index at https://domain.com/ , logged in as a user.
* When I use an incorrect username or password, I am given an error that tells me that my username or password is incorrect, and I am able to re-enter my username and password
* The login form follows the design style guide at https://domain.com/style-guide/
* My login session expires when I close my browser


As a user I am able to reset my password so that I can log in to the system.

* I am shown a link that sends me to the forgotten password functionality at https://domain.com/forgot-my-password/ on the login form at https://domain.com/login/
* There is a form at https://domain.com/forgot-my-password/ that allows me to enter my email
* When I enter an invalid email into that form, I am told that I have entered an invalid email.
* When I enter my email into that form, I am sent an email which has a link at https://domain.com/forgot-my-password/magic-code-here to reset my password
* The magic code should be randomly generated and at least 16 characters and no more than 32 characters long
* If I try to use an invalid or expired magic code, then I should receive a 400 error, with a page that tells me that I have used an invalid or expired magic code
* A forgotten password magic code should last for one hour and then expire.
* The login form follows the design style guide at https://domain.com/style-guide/
* The email follows the email design style guide at https://domain.com/email-style-guide/

As a user I am able to ask the system to remember me as a user.

* On the login form at https://domain.com/login/ I can see a check box that asks me if I would like to be remembered.
* By default, that check box should not remember me.
* When I check the check box and log in, my login session lasts for three months.
* When I fail to authenticate because my email or password is incorrect, the form is still checked when I retry.
* The login form should still follow the design style guide at https://domain.com/style-guide/