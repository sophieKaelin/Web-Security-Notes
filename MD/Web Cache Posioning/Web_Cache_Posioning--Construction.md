## Construction
Identify and evaluate unkeyed inputs
* inject your payload in an unkeyed element
* add random inputs to request and observe impact on the response
   	* sometimes hard to notice, there are other techniques listed bellow.
Param Miner
* Extension in Burp
* Right click on request and select “Guess Headers”
* Logged in 2 places:
   	* BurpPRO: Issues pane
   	* BurpCOM: Extender>Extensions>Param Miner>Output


Elicit harmful response from back-end server
* Evaluate how website processes it
* It is a potential entry for poisoning if:
   	* input reflected in response without sanitisation
   	* response used to dynamically generate other data

Get response cached
* success depends on file extensions, content type, route, status code, response headers

