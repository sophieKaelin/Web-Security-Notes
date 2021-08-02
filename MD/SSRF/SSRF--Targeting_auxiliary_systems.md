## Targeting auxiliary systems
* Diversity in reverse proxies & techniques to misroute requests
* target backend analystics, cahces to find useful exploits

Gather Information
* Can inject lots of different attacks into a request via the headers:
X-Forwarded-For and True-Client-IP
- callback
- Spoof IP address & support hostnames
- App's trust these headers and perform DNS lookup of hostnames into IP addresses
   → Implies they are good target for IP Spoofing

Referer
- analtics often fetch any unrecognised URL specified in header
- Specifiying robots.txt
- Blind vulnerability

Duplicate Parameters
- Incapsula fetch any URL specified twice in query string.

X-Wap-Profile
- ancient HTTP header
- URL to device User Agent Profile (XML doc stating device capabilities: screensize, bluetooth support, protocols supported etc.)
- Fetch untrusted URL and parse untrusted XML

Remote Client Exploits
* difficult to exploit (no feedback from app)
* Spay internal network with canned RCE payloads?


