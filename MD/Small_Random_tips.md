# Small Random tips
* If there is a $ sign at the end of a username, it is a machine login
* Microsoft IIS version correlate directly to the version of windows running
* NTLM hashes can be used to authenticate a user in Windows
   	* Pass the hash attack
* When inspecting an XSS payload in browser, right click and select "Edit as HTML" and it will show you whether special symbols are encoded
      * You often won't see the HTML encoding
* If you are using a box that isn't connected to the internet but need to download tools you can download the files using pip on another computer, copy those files onto the non-internet facing box and use pip to install from those files rather than requesting from the web. [SOURCE](https://stackoverflow.com/questions/11091623/how-to-install-packages-offline)
* DNS Lookup: nsloopup -type=a url
* PORT Lookup: nmap IPV4
* SSL Scan: (navigate to file first) .\SSLScan.exe --no-failed IP:PORT (usually HTTPS)
* Web Crawler: wget URI:PORT (scan all paths on a domain)
* Check all wifi connections: netsh wlan show profile
* Check wifi connection and password: netsh wlan show profile "WIFI-NAME" key=clear
