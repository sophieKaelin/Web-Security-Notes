## SSRF Attack
* SSRF = Server side request forgery
* Server side app can be induced to make HTTP requests to any URL server can access
* Define external XML entity, use URL you want to taret & defined entity within a data value => in application response.
   		* Impact = 2 way internaction with back-end system.
* If this didn't work, you could try a Blind SSRF
<!DOCTYPE foo [ <!ENTITY xxe SYSTEM "http://internal.vulnerable-website.com/"> ]>
* Keep repeating the request and seeing what is being returned from the server in the response
   	* Might be a directory from the URL -> so then add that to the end of your website: http://internal.vulnerable-website.com/NEWFOLDER

