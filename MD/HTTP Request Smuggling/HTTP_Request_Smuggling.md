# HTTP Request Smuggling
What is it?
* Interfere with way site processes sequence of HTTP requests recieved from 1+ users
* Criticals vulnerabilities

What happens?
* Current web apps chain HTTP servers between users and app logic
* User sends request to front-end server (load balancer/reverse proxy)
* Front-end server forwards request to 1+ back-end servers.
* Often used in modern cloud-based apps
* Send several requests over same back-end network connection
   	* Efficiency ++
* Parses HTTP request headers to determine start and end of each.
* Must agree on boundaries between requests
* ATTACK:
   	* cause part of front-end request to be interpreted by back-end as start of next request.

How vulnerabilities arise
* Two ways to specify where request ends:
   	* Content-Length, Transfer-Encoding
   	* Transfer-Encoding can be “chunked” : message body contains chunks of data, newlines between each.
   	* Transfer-Encoding sees 0 length of chunk to mean end of request
* Use both methods at once to conflict each other.
   	* If both headers used, ignore Content-Length header
* Some servers don't support transfer-encoding header
   	* can be induced not to process if the header is obfuscated.
* If front and back end server behave differently with the TE header, they could disagree on boundaries between requests.
   	* THIS IS THE VULN

