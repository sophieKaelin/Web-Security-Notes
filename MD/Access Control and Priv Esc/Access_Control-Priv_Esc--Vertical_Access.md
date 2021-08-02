## Vertical Access
Overview
* restricts access to functionality based on TYPE of user
* e.g. Admin vs Basic User
* Gaining access to functionality not in their type is vertical privlege escalation.

Unprotected Functionality
* Accessing an admin only function. If the functionality isn't protected, anyone can access it
* View robots.txt to have a look at file structure.
* Security by Obscurity: concealing a less predictable URL
* View the HTML and scripts to see if “protected” URL's are referenced in the code

Parameter-based access control methods
* Some apps determine roles at login then store info in user controllable location
   	* hidden field
   	* cookie
   	* preset query string param
   	* https://insecure-website.com/login/home.jsp?admin=true
   	* https://insecure-website.com/login/home.jsp?role=1

Broken Access control resulting from platform misconfig
* Platform layer controls.
* Restrict access to specific URLs and HTTP methods based on role.
   	* DENY: POST, /admin/deleteUser, managers
* Non-Standard HTTP headers that can override URL of original request
   	* X-Original-URL & X-Rewrite-URL /admin
   	* Order is: http://URL/X-Original-URL/REQUEST-URL
* /admin-roles
* If you have access to admin account, perform desired action and trace requests in Burp
   	* Then attempt to perform that same activity with a non-admin's cookie.
   	* Change POST request to POSTX or GET?

