# SSH Port Forwarding

## SOCK Proxy SSH Tunneling
*Notes for tunnelling from kali vm to windows (with vpn) for port forwarding*

1. Run mobaxterm on your host -> hit servers button and hit play next to ssh
	
2. Find your  host IP (can find this in vmware -> edit -> virtual network editor -> look for the hostonly interface and you host should be .1 of that subnet 
	
3. Add the  socks proxy to the proxychains config -> /etc/proxychains4 (need sudo to edit) -> add the following to the end and save: socks4 127.0.0.1
	
4. Open ssh tunnel: ssh -N -D 1080 <your windows user>@<your host IP> 
* If it throws errors clear the file containing known hosts (./.ssh/known_hosts)
	
5. Prepend proxychains to any command you want to run through the socks proxy 

6. Delete known hosts.
