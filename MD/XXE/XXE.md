# XXE
When to use & vs %
* Placing an & to reference an entity will only work with entities in the same file (need to fact check this)
* the % symbol will refer to entities in DTD's in other systems (so you can refer an out of band dtd to load in new entities) (again... fact check this)

What is it?
* XML external entity injection
* inteferes with processing of XML data
* View files on application server filesystem & interact
* Can be escalated to perform SSRF Attack
* They are entities that exist outside of the DTD (like creating a new tag)

How do they arise?
* XML used as transition of data between browser and server (like JSON)
* Usually use a standard library/platform API to process data on the server

Types of attacks
* Retrieve files LFI (local file inclusion)
* Perform SSRF attacks
* exfiltrate data out-of-band
* Retrieve data via error messages

Finding and testing for XXE
* Look for file retrieval : define external entity based on well-known operating system file to test responses
* To test Blind: create an external entity URL for a system you control and monitor interactions
* Look at user-supplied non-XML data within server-side XML to do an XInclude attack
* Pick a small JSON request, try and submit it in XML format and see if it accepts it.
* Copy and paste from payloadallthethings

Preventing XXE Vulnerabilities
* Most vulnerabilities arise because of applications XML parsing library supporting dangerous XML features.
   	* Disable those features that aren't used.
* Disable resolution of external entitties & support for XInclude (config options)

