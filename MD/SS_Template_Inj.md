# SS Template Inj
What is it?
* Use native template syntax to inject malicious payload in a template
* Template is executed server side
* Template engines designed to generate web pages
   	* Combine fixed templates with volatile data
* Attack = user input concatenated directly into template, rather than pasased in as data
   	* Inject template directives
   	* Take control of server

Impact
* dependent on template engine and how app uses it
* RCE
* gain read access to sensitive data

How do vulnerabilities arise?
* User input concaetenated into tempaltes, not passed in as data
* Static template with placeholders for dynamic content (not usually vulnerable to SSTI)
* COMPARISON:
   	* $output = $twig->render("Dear {first_name},", array("first_name" => $user.first_name) ); OKAY
   	* $output = $twig->render("Dear " . $_GET['name']); NOT OKAY Can use : http://vulnerable-website.com/?name={{bad-stuff-here}}
* Some of these features are intentional and others not
   	* Sometimes they like it like this for higher privledged users -> You can just try and get access to their account.

Prevention
* Don't allow users to modify / submit new templates
   	* Sometimes unavoidable for business requirements
* Use logic-less tempalte engine (mustache)
   	* Seperate logic from presentation as much as possible
* Only execute users' code in sandboxed environment
* Applying your own sandboxing

