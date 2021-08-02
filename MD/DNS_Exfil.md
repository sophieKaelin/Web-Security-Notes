# DNS Exfil
DNS-based data exfiltration

Why do Targeted Threats use DNS-based Data Exfiltration?
* Lots of things implemented in a business that inspect TCP and other network traffic protocols
   	* Firewalls, intrusion detection systems, antivirus software, data loss prevention programs
* DNS overlooked
   	* because not associated with data delivery
* Threat actors use above assumptions and complacency. Use DNS to bypass sec mechanisms

How does it work?
* Attacker needs authoritative name server, serving their own domain
* attaches malware to malicious domain, and sends it across the network, returns to their domain and decrypts
* encoded information.
* Tunnel filtered protocols over DNS
* DNS translates URLS into IPs
* NS Record: maps domain name to list of DNS servers

DNS Tunneling
* Method to send data over DNS protocol
   	* protocol was not intended for data transfer
* Can use Tunnelling to get free airport wifi
   	* HTTP traffic blocked until username/password provided
   	* DNS still allowed in the backrgound: just encode HTTP traffic over DNS for free access
   	* Drawback: DNS is slooooowwwwwww
* Bypasses network security devices (firewalls)

Blocking DNS Tunnelling
* Various approaches
* Detection of known malicious domains
   	* drop naughty domains
   	* Applications such as: Cloudfare, OpenDNS, InfoBlox.
   	* Blocklist
* Traffic analysis
   	* reactive
   	* Have knowledge of what regular traffic looks like.
   	* detect when there is an increase in activity
   	* some applications that do this.
* Intrusion Prevention Systems
   	* Snort

