## Context-Dependent Access
Overview
* Access restricted based on state of application
* Stops users performing actions in wrong order.
* e.g. stops shoppers from modifying car contents after checkout.

Access control vulnerabilities in multi-step processes
* Functions often exist over a series of steps
   	* Variety of options or inputs needs to be captures (review and confirming details)
* Sometimes, there are some steps that are protected and others that don't
   	* Test all steps to see where you can do some sneaky work

Referer-based access control
* Some sites have their access controls around the “Referer” HTTP header.
   	* Indicates the page where a request was initiated
   	* Sort of like the pathway -> If the request was made from the /admin page, it can be implied that the user is an admin (but we know that is not the case)

Location-based access control
* Based on geo-location
* circumvented using web proxies, VPNs, manipulation of client-side geolocation mechanisms
