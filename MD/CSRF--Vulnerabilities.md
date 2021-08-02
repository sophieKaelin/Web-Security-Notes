## Vulnerabilities
Overview
* CSRF vulnerabilities arise due to mistakes in token validation
* TODO: ask jamie question in ss

Validation depends on request method
* Some apps validate on POST but forget GET method
* Try switching metods to bypass validation and deliver attack

Validation depends on token being present
* Some apps validate token when present, but skip if it isn't there
* Remove the csrf parameter and see if it works

Token not tied to user session
* Some apps don't validate token belongs to same session as user making the request
   	* global pool of tokens issued and accepts any token in the pool
* Can log in, grab your own token, and validate any request on other peoples behalf with your own token
   	* because it belongs to that pool

Token is tied to non-session cookie
* Invalid configuration: token should be assosicated with session management.
* Happens when app has 2 different frameworks
   	* 1 session handling
   	* 1 CSRF protection
   	* They should be integrated
* Any site that contains behaviour that allows attacker to set cookie in browser, you can attack.
* ATTACK:
   	* Log in and get your own cookie
   	* Set the victims cookie to your own
   	* feed your token to victim in attack.
   	* NOTE: cookie-settin can happen anywhere on DNS domain.
   	* Set-Cookie header?
   	* Set an image with src that has a param setting a cookie
   	* <img src="$/?search=test%0d%0aSet-Cookie:%20csrf=fake"+onerror="document.forms[0].submit();"/>
Token duplicated in a cookie
* some apps don't maintain server-side record of tokens
   	* instead duplicate each token within a cookie and request parameter.
   	* App only verifies token in request parameter matches value submitted in cookie
   	* “Double Submit"
   	* Simple to implement, avoids need of server.
* Attacker perform attack if site contains cookie setting functionality
   	* doesn't need to obtain their own valid token
   	* invent one with required format.
   	* Use cookie setting behaviour. Check if there is anything in the Set-Cookie header and use an XSS attack

