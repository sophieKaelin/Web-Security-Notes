## Common Attacks
Overview
* exploit trust realtionships to escalate attack

Attacks against the server itself
* HTTP request back to the server
* URL with hostname 127.0.0.1 or localhost (loopback adapter)
* If you see an API parameter, exploit that and change it to something you want to access:
   	* localhost/admin to access admin page you aren't allowed to.

Why do apps trust requests from local machine?
* Access control check implemented in different componenet in front of app server. When connection made back to server itself, check is bypassed
* For disaster recovery. App might allow admin access without logging in.
* Admin interface might be listening on different port number than main app (not reachable directly by users)

Attacks against other back-end systems
* Some servers have access to other back-end systems
   	* These aren't usually as well protected either, because you assumed people wont know about them.
* Use the same process as above to change API parameter to access this extra system.



