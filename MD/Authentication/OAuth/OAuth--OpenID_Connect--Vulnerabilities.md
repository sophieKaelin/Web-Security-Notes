### Vulnerabilities
* Specification for OpenID Connect is much stricter than basic OAuth
   	* Less potential for weird implementations of it.
* May still be vulnerable to some OAuth based attacks
   	* since it sits on top of it.

Unprotected dynamic client registration
* standardised way of allowing client applications to register with OpenID
* register by sending POST request to a dedicated /registration endpoint (can be called something is, probably in the documentation)
* JSON format of user data
* Include an array of allow listed redirect URI's
* Should require the client app to authenticate itself (HTTP Bearer token?)
   	* Some allow unauthenticated
* Some properties in the JSON request are URI's
   	* If any are accessed by OpenId provider, leader to SSRF.
* Look at the server configuration to identify endpoints (register?)
   	* Create your own client and try and access resources (logos) to gain access tokens?

Allowing authorization requests by reference
* Can pass in JWT instead of query strings
* instead send a single request_uri with a parameter pointing to JWT containing OAuth parameters.
* request_uri param is a potential vector for SSRF
* potential bypass validation of param values.
   	* some servers validate query string in authorization request, but don't for parameters in JWT
* Check request_uri_parameter_supported option in config file

