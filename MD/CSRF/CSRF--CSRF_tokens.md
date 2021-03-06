## CSRF tokens
What are they?
* unique, secret, unpredictable value generated server-side and transmitted to client
* included in subsequent HTTP requests
   	* Request made, server validates request contains valid token before executing request
* Must have high entropy, tied to users session and validated in every case before action executed.
* Since attacker can't determine/predict value of token, can't construct naughty request with all parameters.

How should the tokens be generated
* Should have significant entropy and strongly unpredictable
* Use cryptographic strength pseudo-random number generator (PRNG)
* Seeded with timestamp + static secret
* Can create smaller tokens, merge then hash if you want to be SUPER SAFE

How are the tokens transmitted?
* Just don't tell people dummy
* Transmit as hidden field of HTML form submitted using POST method
   	* Safe-ish
* placed at top of HTML, before non-hidden input
* Shouldn't be put in URL query string
   	* this is logged and can be transmitted to third parties
* Custom request header
   	* Good because most browsers don't allow custom headers to be sent cross-domain
   	* limitations: only make CSRF protected requests using XHR (over-complicated)
* SHOULD NOT BE TRANSMITTED WITHIN COOKIES

How should the tokens be validated?
* Should be stored server-side in user's session data
* When request is recieved, server should verify request includes token matching value stored in users session data
* Request rejected if token is invalid or not present.

