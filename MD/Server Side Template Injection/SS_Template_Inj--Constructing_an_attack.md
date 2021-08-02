## Constructing an attack
Detect
* go unnoticed because only apparent to people looking for them.
* Easy to exploit (especially in unsandboxed enviornments)
* Try fuzzing template
   	* Inject some spcial characters: ${{<%[%'"}}%\
   	* Any exceptions indicates suntax is interpreted by server.
* SSTI occur in 2 different contexts -> try both

Plaintext context
- freely input content in HTML tags or other
   → XSS too?
- Add mathematical expressions ({7*7})
   → If it evaluates to 49, it is being evaluated server-side
   → POC

Code Context
- User input being placed within template expression.
- Doesn't result in obvious XSS
   → Easily missed SSTI
- CHECK: if there is XSS?
   → http://vulnerable-website.com/?greeting=data.username<tag>
      ⇒ Probably get blank, encoded tags, error message = no XSS
- TRY: Break out of statement using templating syntax and add extra HTML
   → http://vulnerable-website.com/?greeting=data.username}}<tag>
      ⇒ if blank: wrong template language syntax, try others. If you've tried them all, injection isn't possible.

Identify
* Identify the template engine
* Submit invalid syntax to see the error message (might list the correct syntax in the error message)
* Process of elimination (based on correct/incorrect syntax)
   	* Don't jump to conclusions after one test, might be various templates that get the same response.

Exploit
* Various ways of exploiting, exploits has it's own page :)

