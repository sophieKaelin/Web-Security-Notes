# CORS
What is it?
* Cross Origin Resource Sharing
* Browser mechanism enabling controlled access to resources located outside given domain
* Extends Same-origin policy (adds more flexibility)
* Provides potential for cross-domain based attacks
   	* if configuration and implementation is poor.
* Not a protection against Cross-origin attacks like CSRF

Prevention
* Usually issues come from misconfigurations
* Only allow trusted sites, only trusted sites in ACAO
* Avoid whitelisting Null and wildcards
   	* especially in internal networks
* CORS defines browser behaviours, not server-side protection
   	* web servers need to apply protections over sensitive data (authentication, session management) in addition to everything else

