## Manipulate Traffic
Intercept/modify messages
* Determine whether sockets are being used (analyse traffic)
* Intercept tab on Burp -> just modify like that

Replaying / Generating new messages
* Send to Burp Repeater
* Send over and over

Manipulate Connections
* Manipulate the handshake
* Enables you to reach more attack surface
* Drop a connection and establish a new one
* Tokens in OG request might be stale and need updating
* How to attack:
   	* Burp Repeater
   	* Pencil Icon next to WS URL.
      		* Attach existing connected WS
      		* Clone connected WS
      		* Reconnect to disconnected WS
   	* Wizrd will show details.

Manipulating message to exploit vulns
* WebSocket History Tab under proxy (Burp)
* tamper with contents of messages
* Messages might be placed in tags (HTML)
* Add an XSS Payload:
   	* {"message":"<img src=1 onerror='alert(1)'>"}

Manipulate Handshake to exploit vulns
* Vulnerabilities in the design flaws
* Misplaced trust in headers, like X-Forwarded-For
   	* Set IP in header to 127.0.0.1 or 1.1.1.1
* Session-handling flaws
* Custom HTTP headers.

Using XS WS to exploit vulns
* Connect to the dodgy site to create a connection
* Called Cross-Site Webscoket Hijacking (section on it)
* Exploiting CSRF vulnerability
* Serious impact, privledged actions on behalf of user.

