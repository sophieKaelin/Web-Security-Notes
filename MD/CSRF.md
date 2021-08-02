# CSRF
Jamie's TLDR
Yeah pretty much! So CSRF is essentially forcing a user to do something they didn’t want to do by taking advantage of the fact that your browser automatically sends cookies for particular domains when it sends a request. Attackers can take advantage of that by crafting a request (for example a password change request on a banking site) and hide it in their own website. If they can phish a user into visiting their site, they can fire off that password change request, and the users browser will automatically send their session cookies with it, to validate the request.

Tokens come into play as a preventative measure. Tokens are generally used as a way of validating that a request is unique, and hasn’t been sent to the server before

In that example they’re saying that sometimes you can check if the referer for a request is correct for the site that sent it, however that’s not a valid method of preventing CSRF because the referrer header is user controlled, meaning that it can be changed to whatever you want, or even left out entirely, so it doesn’t stop an attacker changing or deleting the header, then sending the request

Overview
* Allows attacker to induce users to perform unintended actions
* partly circumvent same origin policy
* CSRF = Cross Site Request Forgery
* refreshes each time.
* Wont work on JSON requests.
* You can only do CSRF attack with POST request, not PUT

How it Works
* Three key conditions in order for CSRF attack to be possible:
   	* A Relevant Action: action within app attacker has reason to induce (e.g. modifying permissions, changing a password)
   	* Cookie-based session handling: Involves issues 1+ HTTP requests. Relies on session cookies to identify user who made the requests
   	* No unpredictable request parameters: Request performing action doesn't contain parameters that can't be guessed by attacker (e.g. if changing a password and need to know existing password, won't work)
* SAMPLE HTML:
<html>
	<body>
		<form action="https://vulnerable-website.com/email/change" method="POST">
			<input type="hidden" name="email" value="pwned@evil-user.net" />
    </form>
    <script>
    	document.forms[0].submit();
    </script>
	</body>
</html>

Constructing Attack
* You can create your own dodgy html, but this can take a while.
* Luckily, Burp has a CSRF PoC generator
   	* Right click request -> engagement tools/ generate CSRF PoC
   	* Burp will generate HTML to trigger request
   	* You can adjust the code if you need to.

Delivering exploit
* Similar delivery for reflected XSS
* attacker place malicious HTMl on site they control, and induce victims to visit the site
* Wait for user to visit the site
* Some simple exploits use GET method in a single URL on vulnerable site
<img src="https://vulnerable-website.com/email/change?email=pwned@evil-user.net">

Prevention
* Include CSRF tokens in relevant requests
* SameSite cookies are also a good way of protecting against attacks.



