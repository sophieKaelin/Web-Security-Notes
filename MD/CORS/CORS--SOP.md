## SOP
Overview
* Same Origin Policy
* TLDR: stops websites attacking each other and stealing resources
* restrictive cross-origin spec limiting ability for website to interact with resources outside of their domain
* Developed in response to malicious cross-domain interations (stealing private data from other sites)
* allows domain to issue requests to other domains, but not to access the responses.
* Origin: URI scheme, domain, port number
   	* must have the same of all of them (URI=HTTP/HTTPS)
   	* Port number doesn't have to be the same on Internet explorer.

Why is it necessary?
* When sending request from one origin to another, cookies are also sent as part of the request.
* If session cookie is passed on to malicious site, they can use that cookie to access your profile on other sites visited previously

How is the policy implemented?
* SOP controlls JS access to content loaded cross-domain
* Does allow embedding of images via <img> and <video>
   	* JS can't read these contents, or anything else.
* Exceptions:
   	* Some objects writeable but not readable cross-domain (location, location.href from iframes/new windows)
   	* Some objects readable but not writeable cross-domain (length of window object, closed)
   	* Replace can be called cross-domain on location object
   	* Some other functions can be called cross-domain (close, blur, focus on new window. postMessage on iframes/new windows)
* Partially mitigate cookie travelling using HttpOnly cookie flag
* Relax policy using document.domain for a specific domain
   	* only if it's part of your FQDN (fully qualified domain name)

