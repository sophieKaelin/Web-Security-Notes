## Prevention
* validation of inputs by both OAuth provider and client application
   	* especially redirect-uri
* Up to devs to make OAuth flow secure (not much OAuth protections)
* Vulnerabilities can be client app or OAuth service.

For OAuth service providers
* Require client app's register allowlist of valid redirect_uris
   	* byte for byte comparison to validate URI in incoming requests
* Enforce use of state param.
   	* bind value to hash of user's session cookie. Protection against CSRF attacks
   	* makes is difficult to use stolen auth codes
* On resource server, verify access token issued to same client_id that is making the request.
* Check request scope matches original scope requested when retrieving token.

For OAuth client applications
* Use state parameter
* Send redirect_uri to /authorization and /token endpoint
* When it is difficult to keep the client_secret private, implement protections to limit impact of interception / leakage (PKCE (RFC7638))
* If using OpenID Connect id_token:
   	* ensure proper validation to JWS, JWE and OpenID Specifications
* stop authorization codes being leaked in referer headers (maybe when loading logos or other external scripts)

