# DOM Based
What is the DOM?
* Website's can use JS to manipulate nodes & objects of the DOM and their properties.
* DOM manipulation is not a problem
* It is an issue when data is handled insecurely
   	* When JS takes attacker value (source) and pass into dangerous function (sink)

What is Taint Flow?
* source: JS property that could be attacker controlled (e.g. location.search, document.cookie)
* sinks: potentially dangerous JS function / DOM object (e.g. eval(), document.body.innerHTML)

Common Sources
* document.
   	* url
   	* documentURI
   	* URLUnencoded
   	* baseURI
   	* cookie
   	* referrer
* location
* window.name
* history.
   	* pushState
   	* replaceState
* localStorage
* sessionStorage
* IndexedDB
* Database

