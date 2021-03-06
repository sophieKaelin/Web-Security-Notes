# SQL Inj
CHEAT SHEET

What is it?
* Intefere with queries an app makes to it's DB
* Allows attacker to view data they aren't meant to
* AIM: Modify/delete data to cause persistant change to app content/behaviour
* Possibility to escalate injection to compromise underlying server - DOS

Impact
* Access to unauthorise/sensitive data (pwd, credit card, personal info)

Sample Attacks
* Retrieving hidden data (modify query to return more)
* Subverting application logic (change query to intergere with app logic)
* UNION attack (retrieve data from another table)
* Examine the DB (extract info on version/structure)
* Blind SQL inj (controlled query results not returned in app response)

What to look for
* filters
* input fields
* extra tokens/http headers

Stored SQL Injection (Second Order)
* Takes user input from HTTP request and stores for future use
* No issue when adding to the database, just when it's retrieved.

Keep in mind
* Different DB's have different languages they use, so try lots or work out what kind of DB it is first.

Prevention
* Use of paramaterised queries (prepared statements) instead of string concatenation.
* String in query must be a hardcoded constant

