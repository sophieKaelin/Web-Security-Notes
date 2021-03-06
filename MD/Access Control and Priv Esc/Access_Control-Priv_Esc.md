# Access Control/Priv Esc
What is it?
* Application of constraints on who/what actions can be performed 
* Access control is dependent on authentication and session management.
* Authentication: identifies and confirms user
* Session Management: identifies which HTTP requests are made by same user
* Access Control: determines whether a user can carry out an action

Prevention
* Don't rely on obfuscation for access control
* All non-publically accessible resources should be denied by default
* Use signle application-wide mechanisms for enforcing access controls
* Mandate developers to declare the allowed access for each resource and deny access by default
* Audit and test to ensure they are working as designed.

