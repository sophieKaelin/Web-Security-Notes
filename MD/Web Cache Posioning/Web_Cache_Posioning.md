# Web Cache Posioning
Good Caching Settings
* To protect requests that contain sensitive information the correct headers should be applied
* Reflected in the response
* Cache-Control: no-store no-cache
* max-age=0 (to clear existing cache)

When Testing
* You only really need to check for correct configuration.
* Are the headers set to no-cache no-store for sensitive information? Is there potential for posioning?
* GENERAL: Good to just check CORS, CSP and Cache headers.
* X-Cache: hit means response came from the cache

What is it?
* Exploit behaviour of web server & cache so a harmful HTTP response served to other users.
* 2 phases:
   	* How to elicit a response from back-end server that contains dangerous payload
   	* Make sure their response is cached & served to others.
* relatively new (2018)

Impact
* Dependent on 2 factors
* What can the attack can get cached
   	* how harmful the payload is, what attacks are being used in conjunction
* Amount of traffic on the page
   	* response only served for a period of time to users visiting at that time.
   	* If no one visits the site for x amount of time, attack unsuccesfull
   	* However, you could script an attack so it re-poisons the cache indefinitley.

Prevention
* Disable caching (if feasible i.e. if it's actually used and assists with latency issues)
* Restrict caching to static responses
* Review which headers are supported and if they're neccessary.
   	* some obscure ones might be enabled by default
* When implementing a cache:
   	* rewrite request > excluding something from cache key for performance
   	* Don't accept fat GET requests
   	* Patch client-side vulnerabilities (regardless of whether they seem exploitable or not)

