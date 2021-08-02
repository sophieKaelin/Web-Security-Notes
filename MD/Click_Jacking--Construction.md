## Construction

Construction
* Use CSS to create/manipulate layers.
* Incorporate target website as an iframe layer on top of decoy site.
* z-index: determines stacking order of iframe/web layers
* Change opacity
* Some browsers stop opacity from happening
* Play around with top/left properties to move element around the place.
SAMPLE
<body>
  <style>
    #target_website {
      position:relative;
      width:800px;
      height:800px;
      opacity:70%;
      z-index:2;
      }
    #decoy_website {
      position:absolute;
      top:510px;
      left:50px;
      width:100px;
      z-index:1;
      background: green;
      }
  </style>
  <div id="decoy_website">
  Click Me
  </div>
  <iframe id="target_website" src="targetwebsite">
  </iframe>
</body>

With prefilled form input
* Some forms allow for prepopulation using GET parameters prior to submission.
   	* Some require text before submission
* URL modified to incorporate values of attackers choosing.
* <iframe src="$url?email=hacker@attacker-website.com"></iframe>

Frame Busting Scripts
* Attacks possible whenever sites can be framed.
* Preventative technique: rectrict framing capabilities of site
* Implement frame bust through JS add-ons/extensions like NoScript
* Abilities of scripts
   	* force current app window to be on top
   	* Make all frames visible
   	* prevent clicking invisible frames
   	* intercept/flag clickjacking attacks to user.
* Browser/platform specific
* Attacks:
   	* Use HTML5 iframe sandbox attribute
      		* set allow-forms, allow-scripts and remove allow-top-navigation
      		* stops scripts from working (can't check whether it's on top)
   	* <iframe id="victim_website" src="https://victim-website.com" sandbox="allow-forms"></iframe>

Combined with DOM XSS attack
* Carrier for another attack like (DOM XSS)
* First need to identify XSS exploit
* Then, combine with iframe target URL
* Button executes XSS attack

Multistep clickjacking
* Manipulating inputs into target website can take extra steps
* Multiple divisions / iframes
* need precision and stealth.

