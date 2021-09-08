# Priv Esc

## Useful resources
https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation
https://book.hacktricks.xyz/linux-unix/privilege-escalation
https://sushant747.gitbooks.io/total-oscp-guide/privilege_escalation_-_linux.html
https://github.com/TCM-Course-Resources/Linux-Privilege-Escalation-Resources

## Initial Enumeration
* `hostname1`
* `uname -a` or `cat /proc/version` or `cat /etc/issue` or `lscpu`
    * google if there are any exploits associated with it
    * good for information gathering on a system.
* `ps aux` <- to see what services are running
* Look for kernal version, architecture, what services are running

### User Enumeration
* `whoami` and `id`
    * can look at which group you belong to.
* `sudo` -l for what commands you can run as root
* cat the /etc/passwd values -> maybe there will be some usernames in there?
* cat the /etc/shadow and /group files to see if you can access them
* `history`

### Network Enumeration
* Some commands wont work on the newer versions
* `ifconfig` or `ip a`
* `ip route` <- which networks do you have access to?
* `arp -a` or `ip neigh`
* `netstat -ano` <- what ports are open and communications exist. What machines are talking to us?