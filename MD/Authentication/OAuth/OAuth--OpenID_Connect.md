## OpenID Connect
What is OpenID Connect?
* extends OAuth protocol to provide dedicated identity/auth layer on top of basic implementation.
* better support for auth case of OAuth
* was not designed for auth -> more for delegation of authority for resources between apps
* Issues: people using it to authenticate users were just doing workarounds and couldn't maintain user authentication
   	* no standard way of requesting data for this purpose
* that's what OpenId was created for

How does it work ?
* additional standardized set of scopes that are the same for all providers
* Extra response type: id_token

Roles
* Relying Party - applicaiton requesting authentication of a user (like OAuth client)
* End user - user being authenticated (like resource owner)
* OpenID Provider - OAuth service configured to support OpenID Connect

Claims and Scopes
* claims = key:value pairs representing information on the user on the resource server
* scopes are the same across all OpenID Services
   	* Must specify openid and 1 or more other standards:
      		* profile
      		* email
      		* address
      		* phone
   	* read access for subset of claims about user

ID Token
* returns JWT with signed JWS
* contains list of cliams based on scope initially requested
* contains info about how/when user was last authenticated by OAuth service.
* Allows client to decide whether the user has been sufficiently authenticated.
* reduces the number of requests that need to be sent between the client and OAuth service (improve performance)
* Integrity of the data is based on JWT signature -> protection against PITM attacks

Identifying OpenID Connect
* obvious through authorization request.
* Look for mandatory openid scope
* check whether the OAuth service supports it
   	* Check the providers documentation for any useful info
   	* access config file via /.well-known/openid

