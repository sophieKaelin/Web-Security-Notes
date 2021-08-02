# JWT
Types of Signatures
* Multiple signature methods to ensure integrity
   	* RSA (RS256) based -> Private to encode and Public key to decode
   	* Elliptic curves
   	* HMAC (HS256) -> Sign/Verify with same secret
   	* None

Vulnerabilities
* None singing.
* If RSA is being used and alg type isn't verified
   	* change it to HMAC (since you only need public key, and public key for RSA is available to decode)

* https://jwt.io
* JSON web token is broken up into 3 parts
   	* Header, Payload (both encoded in BASE64) and Signature (encoded using technique specified in header)
* HACK
   	* Change the alg in header to “none” and remove the signature so that it isn't validated (depending on the validation happening in the background). Then you can change payload to contain whatever you want (e.g. change username to admin)
   	* http://repository.root-me.org/Exploitation%20-%20Web/EN%20-%20Hacking%20JSON%20Web%20Token%20(JWT)%20-%20Rudra%20Pratap.pdf
   	* http://repository.root-me.org/Exploitation%20-%20Web/EN%20-%20Attacking%20JWT%20authentication%20-%20Sjoerd%20Langkemper.pdf
* You can use John the Ripper to crack the secret key of the signature (especially if you add the --format=HMAC-SHA*** tag)