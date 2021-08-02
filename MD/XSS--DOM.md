## DOM
DOM-Based XSS
* XSS Triggered through JS changing the HTML
* When app has client-side JS that processes data unsafely (sometimes writing data back to DOM)
* Place data into source so it is propagated to a sink and causes execution of JS
* Common source is a URL
* Work through each available source and test each one individually
* Look at destination, close the tag and add your own tag.

