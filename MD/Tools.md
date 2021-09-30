# Tools
* Burp
   	* Allows you to inspect traffic
   	* Works by breaking the TLS connection between client and server
   	* We connect to burp so it can decrypt the traffic and let us mess with it
   	* Then it makes second connectoin between itself and the server
      		* That's why you need a certficiate in the browser, otherwise the browser may think someone is performing a PITM attack
      		* Sometimes says portswigger, other times burp. Browser becomes suspicious of this.
	* Project Options -> Override user options (for upstream proxies)

* How to download things without getting flagged by antivirus
   	* Add temporary virus exclusion/ threat protection
   	* Create a folder that won't get scanned
* Dumping NTLM hashed -> for pass the hash attack
   	* Dump LSASS file
   	* Use mimikatz -> run as admin
   	* Task manager -> right click -> create dump file.
      		* Mimicats will take the dump file and export creds locally
   	* cmd -> privilege::debug
   	* cmd -> sekurlsa::logonpasswords
* BloodHound will map out an AD
   	* Find shortest path to DA
* Dnsmasq
	* Quick DNS server
* PingCastle
   	* Network enumeration benchmark
   	* Scores the network, highlights insecurities
* Kerberos
   	* Authentication ticketing system
   	* There is a default user that controls it all KRBBGT (or something similar)
      		* Get a hash of their password
      		* Creates a “Golden Ticket” -> You can basically access anything.
      		* Persistance attack -> Can just keep creating a new ticket for DA.
   	* Authentication ticket
* Goddi
   	* Dumps heaps of stuff found on a network
* EyeWitness
   	* Provide various HTTP IP's
   	* will give you a screenshot of each page and the HTTP code.
* CrossLinked
   	* Dump emails from a domain by browsing linkedIN
* searchsploit
	* can install on kali linux, you can search for a service and it'll tell you about exploits associated with it
* [ImageMagick](https://imagemagick.org/index.php)
	* modify images to corrupt them (load xss explotis?)