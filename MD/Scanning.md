# Scanning
Definitions
Passive Scan- look at existing requests coming through and scanning them for vulnerabilities
Active Scan - Sends manipulated requests to the server in order to expose vulnerabilities. Need to be careful

Active Scan in Burp
* Make sure to set your scope in Target -> site map (should have done this when setting up burp)
* Send request to Intruder to define insertion points
* Right Click -> Scan defined Insertion points -> scan configs -> new
   	* Audit Optimisation -> turn off any redirections
   	* Resource pool -> create new resource pool (for throttling traffic) stops from hammering with requests
      		* Max concurrent requests = 2
      		* Delay = 200
* Scan progress and results will appear in dashboard
* Choose a good request 
   	* probably not one that creates/updates/deletes data
   	* GET requests are good
   	* Choose interesting ones (e.g. ones that pull data from db's as opposed to plain HTML pages)

