## Things to Try
So Many things to try!

* Test every entry point
* %bf%27 = single quote
* Check for Reflected, Stored or DOM
* Just a normal script
* Chuck in a number, trace it in burp and see where it ends up
   	* From here you could manipulate an attribute 
* If there is a lock (they are blocking scripting tags) try other tags. If you can't find any, try a payload
   	* There are sites with good payloads to try:
      		* https://portswigger.net/web-security/cross-site-scripting/cheat-sheet
      		* https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/XSS%20Injection
   	* do this in burp, send it to the Intruder.
* Search for parameters in the source code and add it to the URL
* If innerHTML (which doesn't take scripts), use an element with an onload or onerror eventhandler:
   	* <img src=1 oneerror=alert(1)>
* Look for Sinks (eval, write).

TODO: Add list of different situations/contexts from portswigger and give sample inputs





