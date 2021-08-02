## Find hidden attack surface
* There are some places that don't contain any XML that you can attack

XInclude Attacks
* Some apps recieve client-submitted data, embed it server side in XML doc, then parse it
   	* e.g. back-end SOAP request, processed by SOAP service
      		* Soap has built in error handling, response will contain error information
* Not normal attack, don't control the XML file.
* XInclude allows you to include XML from subdocuments
<foo xmlns:xi="http://www.w3.org/2001/XInclude">
<xi:include parse="text" href="file:///etc/passwd"/></foo>
* Look for places taking input and put it there.

Via File Upload
* When uploaded photo's are processed server-side
* Some use XML : like DOCX and SVG
* try and upload an SVG, because it uses XML, and attacker can submit malicious SVG image
<?xml version="1.0" standalone="yes"?>
<!DOCTYPE test [ <!ENTITY xxe SYSTEM "file:///etc/hostname" > ]>
<svg width="128px" height="128px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1">
	<text font-size="16" x="0" y="16">&xxe;</text>
</svg>

Via Modified Content Type
* POST requests use default content types like “application/x-www-form-urlencoded”
* Some websites expect requests in this format, but will also tolerate other content types (like XML)
* Change Content-Type to text/xml and add some xml to the contents
<?xml version="1.0" encoding="UTF-8"?><foo>bar</foo>
* Easy to reach hidden XXE attack surfaces by reformating requests to use XML

