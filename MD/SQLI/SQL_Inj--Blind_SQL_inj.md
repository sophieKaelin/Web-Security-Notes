## Blind SQL inj
* Blind vulnerabilities are when the app doesn't return results/errors of SQL queries in the response.
* Techniques are more complicated

Technique
* Change logic of query
   	* trigger a detectable difference in response
   	* e.g. new condition, or error like divide by 0
* Trigger time delay in process of query
   	* infer truth of condition based on time to respond
* Trigger out-of-band network interaction
   	* OAST techniques
   	* Last resort, very powerful
   	* e.g. place data into DNS lookup for domain you control

Triggering Conditional Responses
* Can force true/false responses to see how the page responses
* Poke around at input fields/filters/custom cookies and try different inputs (' or --) and check for differences in the page (what triggers the change)
* If you've found a potential spot, test some TRUE/FALSE booleans to confirm
* Test some conditions that check if there is a table there:
   	* ‘+AND+(SELECT+’a'+FROM+users+LIMIT+1)='a
* Test for a particular value if you know there is one there (e.g. if you know there is a user called administrator in the user table
   	* ‘+AND+(SELECT+’a'+FROM+users+WHERE+username='administrator')='a
* Now you should test length of the value (e.g. the length of the password for the admin)
   	* and an AND+LENGTH(password>1)='a and keep incrementing until the condition is false.
   	* Might be worth putting into burp intruder
   	* Add in Options -> Grep Match -> the sign that it is positive/negative (e.g Welcome Home!)
* Once you've got the length, repeat the same process with each character.
   	* SUBSTRING(string, start, length)
   	* SELECT+SUBSTRING(password,1,1)+FROM+users+WHERE+username='admin')=CHAR
   	* Try implementing a Cluster Bomb attack, which tests every permutations for multiple payload positions. e.g. set up one for each char position & character.
      		* Only through Burp Intruder PRO

Inducing conditional responses by triggering SQL errors
* If there is no difference in behaviour when you try forced conditional responses
* Try triggering errors instead
* ' AND (SELECT CASE WHEN (1=2) THEN 1/0 ELSE 'a' END)='a
   	* case is just a conditional
* xyz' AND (SELECT CASE WHEN (Username = 'Administrator' AND SUBSTRING(Password, 1, 1) > 'm') THEN 1/0 ELSE 'a' END FROM Users)='a 

Triggering time delays
* Handy BApp to install: Request Timer -> or just monitor the “response recieved column” and test the highest numbers
* Differs by DB
* Now, what if errors are handled ‘gracefully’ (i.e. they aren't displayed on the screen)
* SQL queries occur synchronously by the app
* delaying will also delay HTTP response
* Can infer truth of injected condition based on time taken to test condition & trigger a delay.
* '; IF (1=2) WAITFOR DELAY '0:0:10'--
* Or just concatenate it on the end: '||pg_sleep(10)--
* Same proccess as above (getting password length then doing letter by letter)

OAST
* "Out of Band Security Testing
* use external servers to see blind vulnerabilities
* improvement of DAST (Dynamic applicatoin security testing)
   	* Blind and async bugs easily missed
* SAST (Static application security testing)
   	* Looks at the code itself
   	* Doesn't execute any code
   	* False positives - takes time determining which in the whole list are legitimate issues.
* Use Burp Collaborater as a third party to Burp and the target
   	* identifies precise Burp Scanner payloads responsible for each interaction recieved.
TODO: Complete content and labs



