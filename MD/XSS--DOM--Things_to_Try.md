### Things to Try
If JQuery is being used & there is a sink that can alter DOM Elements (like attr())
* If there is a get(paramName), then chuck a ?paramName=javascript:alert(1) into the URL

If AngularJS is being used
* When site uses ng-app on the HTML element
* Angular will execute JS inside double curly braces
* Sample Angular: 
   	* https://www.w3schools.com/angular/angular_expressions.asp
   	* {{$on.constructor('alert(1)')()}}

If the response appears in a JSON response
* Test which characters are not being escaped.
   	* Add a back slash to escape double quotes
   	* Close JSON early and comment out the rest
   	* SAMPLE: \"-alert(1)}\\

If there is a function that removes <> symbols
* Chuck some <> symbols out the front, maybe it only removes the first instance?

