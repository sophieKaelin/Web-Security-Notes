## Referer based defenses
Overview
* Referer header an attempt to defend against attacks
   	* Verify request originated from app's own domain
   	* Easily subject to bypasses
* Optional header with URL of page linked to resource being requested
   	* Usually added automatically by a browser when clicking a link or submitting a form
   	* Can withold/modify value of header

Validation of Referer depends on header being present
* Apps often skip validation if header is omitted
* Attacker can craft exploit so that referer header is dropped
* Delete the referer tag and see if it passes, then craft an attack
* Use meta tag
<meta name="referrer" content="never">

Validation of Referer can be circumvented
* Some validation isn't top notch
* Do they check if the URL is EXACTLY the same, or just starts or ends with the correct values?
   	* Attackers can exploit this to create variations of the domain
   	* http://vulnerable-website.com.attacker-website.com/csrf-attack
   	* http://attacker-website.com/csrf-attack?vulnerable-website.com
* Response containing your exploit can have "Referrer-Policy: unsafe-url" so the full URL is sent
* Change your referer history to contain a site you didn't actually visit (in script)
history.pushState("", "", "/?your-lab-id.web-security-academy.net")

