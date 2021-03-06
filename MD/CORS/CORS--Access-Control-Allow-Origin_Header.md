## Access-Control-Allow-Origin Header
Overview
* CORS specs provides controlled relaxation on the same-origin policy for HTTP requests
* The header is included to enable this if the other website has the same header

Implementing Simple Cross-Origin resource Sharing
* The header can contain multiple origins or NULL.
* Request Origin needs to be in Response ACAO.

Handling cross-origin resource requests with credentials
* If you want to send across credentials (like cookies) you set Access-Control-All-Credentials to true

Relaxation of CORS specs w/ Wildcards
* ACAO supports wildcard * (when used in isolation)
* wildcard is restricted in specs
   	* Can't combine * with cross-origin transfers of credentials (authentication, cookies, client-side certs)
   	* Security feature.

Pre-flight checks
* added to CORS specs to protect legacy resources
* Adds extra HTTP request round-trip to request, so increase browsing overhead.
* Sometimes, cross domain request includes non-standard HTTP methods or headers
   	* pre-flight checks, checks if the methods/headers in a request are permitted before performing them
EXAMPLE
OPTIONS /data HTTP/1.1
   Host: <some website>
   ...
   Origin: https://normal-website.com
   Access-Control-Request-Method: PUT
   Access-Control-Request-Headers: Special-Request-Header
   
 ---- RESPONDS WITH ----
 
 HTTP/1.1 204 No Content
   ...
   Access-Control-Allow-Origin: https://normal-website.com
   Access-Control-Allow-Methods: PUT, POST, OPTIONS
   Access-Control-Allow-Headers: Special-Request-Header
   Access-Control-Allow-Credentials: true
   Access-Control-Max-Age: 240  
   
Does CORS protect against CSRF?
* Doesn't!!!
* Common misconception
* CORS = controlled relaxation of same-origin policy
* If poorly configured, might increase possibility of CSRF

