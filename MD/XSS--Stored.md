## Stored
Stored XSS
* AKA Persistant XSS. 
* Receive data from untrusted source and includes that data in HTTP response
* Control a script that is executed whenever another user accesses the site
* Example: posting a comment on a blog. If you post a script, sometimes that script will run whenever another person accesses that blog.
* Difference to Reflected: enables attacks that are self-contained within the application
   	* No external way of inducing another user to participate (reflected must be triggered by an action. The action for stored, is just accessing the webpage)
* Only impacts users accessing site (logged in)
* Test entry and exit points & locate the links
* Entries:
	* Params in URL query string/message body
	* URL file path
	* HTTP Request headers

