## Cicumventing common defences
Blocklist based input filters
* Sometimes 127.0.0.1 is blocked
   	* Try 2130706433
   	* Try 017700000001
   	* Try 127.1
   	* Create your own domain name that resolves to 127.0.0.1
   	* Obfuscate blocked strings with url encoding -> double encode 
   	* Try each one bit by bit before you visit sub directories

Allowlist based input filters
* Some allow input that matches, begins with/contains allowlist permitted values
   	* embed credentials into url before hostname https://expected-host@evil-host
   	* use # to indicate URL fragmanet https://evil-host#expected-host
   	* Leverage DNS naming to have DNS name you control https://expected-host.evil-host.
   	* URL encode characters to confuse parser

Bypassing filters via open redirection
* API used to make back-end HTTP request must support redirections
* Construct URL that satisfies filter & refirests to back-end target
* Add a path=ashjfkhsalkjfsh at the end of your URL
   	* ACTUALLY: add it to your parameter if it is being passed in as a URL parameter
   	* Have some of the correct structure in case there is some checking.

