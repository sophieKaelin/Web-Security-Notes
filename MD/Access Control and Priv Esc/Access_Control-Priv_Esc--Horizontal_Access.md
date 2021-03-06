## Horizontal Access
Overview
* Access control for specific users, rather than groups
* e.g. banking applications let you view your account + make transactions, but not other people's accounts
* Gaining access to resources that belong to another user.

Basic Tactics
* If there is an ID in the URL params or storage, change it.
   	* Can find ID by guessing. Or exploring other places it could be exposes (messages, reviews)
   	* Poke around web page and find places the user has interacted in the past (maybe a blog post?)
* If you are getting redirected:
   	* Look at response containing redirect (could contain sensitive data)

Horizontal to Vertical privledge escalation
* Try and force the page to react to an admins account to get some info, then log in as admin.

Insecure Direct Object References (IDOR)
* Subcategory of access control vulnerabilities.
* When app uses user-supplied input to access objects directly.
* Explore other files on the system if there is a download link.
* More on another page
Direct reference to DB objects
* If you have access to DB, you can upgrade your own privledges
Direct reference to static files
* sensitive resources sometimes located in static files on server-side filesystem.
* Sometimes files are saved with incrementing values -> if you have been asked to save file4, try and access file3



