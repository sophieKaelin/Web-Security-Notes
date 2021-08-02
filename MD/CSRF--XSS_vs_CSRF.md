## XSS vs CSRF
What is the difference?
* XSS = attacker executes arbitrary JS within browser of victim
* CSRF = attacker induce victim user to perform actions that they don't intend to.
* XSS vulnerabilities more serious
* CSRF only applies to subset actions user can perform
   	* Apps often implement CSRF but overlook 1-2 actions
   	* Whereas, successful XSS can perform anything
* CSRF = “one-way” vulnerability
   	* Can induce a HTTP request, but can't retrieve the response

Can CSRF tokens prevent XSS attacks?
* Some attacks can be prevented
* If an XSS attack requires a token, then attack is prevented
* CSRF tokens don't protect against stored XSS, mostly reflected.

