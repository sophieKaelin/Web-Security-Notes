## Understanding Averseries
*Notes from Building Secure & Reliable Systems: Best Practices for Designing, Implementing and Maintaining Systems, Chapter 2 (9781492083122)*

## Intro
* Go to Chapter 21 for more information on cultural aspects of dealing with adverseries.
* 3 frameworks to understand attackers.
* Consider motives of attackers, common attacker profiles, how to think about attack methods

## Attacker Motivations
* Motives should inform proactive and reactive responses
    * Proactive = during system design
    * Reactive = during incidents
* Motives include (and can be combinations of):
    * fun
    * fame
    * financial gain
    * coercion - get victim to knowingly do something they don't want to do
    * manipulation - create intended outcome or change behavior
    * espionage - gain valuable information. Often performed by intelligence agencies
    * destruction - destroy data or take system offline. 

## Attacker Profiles
* who are they, do they perform attacks for themselves or others general interests.
* terminology - hacking is considered non malicious, attacking is considered malicious

### Hobbyists
* first hackers were just curios technologists wanting to understand how systems works
* motivated by thirst for knowledge, hack for fun.
* often allies to devlopers

### Vulnerability Researchers
* Use security expertise professionally (red treams chapter 20)
* full time employees, part-time freelancers, accidental average users, bug bounties (chapter 20)
* motivated to make systems better.
* don't push beyond boundaires - operating outside the norms invalidates possibility of a reward

### Governments and Law Enforcement
* gather intelligence, police domestic crime, commit economic espionage, complement military operations.
*  Activities include:
    * Intelligence gatherings
        * previously Signals intelligence (SIGINT) and human intelligence (HUMINT). Less physical presence needed now.
    * Military purposes
        * referred to as cyber warfare or information warfare
    * Policing domestic activity
        * surveiling terrorists/criminals, but also journos, activists.
        * the ethics are debatable
    * Protecting your systems from nation-state actors
        * consider whether system could be a valuable target
    * Activists
        * call for social change.
        * known for defacing websites
        * use of botnets to carry out DOS attacks
        * usually more vocal about their activity, and take public credit
    * Protection against hacktivists.
        * consider whether you are a target (controversial)
        * consider layered security controls: patched vulns, DOS resilience, backups can restore system/data quickly.
    * Criminal Actors
        * ransomware, social engineering
        * often gravitate to the easiest way to achieve their goals - shift to another victim if hard enough.
    * Automation and AI
        * likely to see more of this in the future - automated attacks.
        * automated attack platforms means we need more automated defences.

### Insiders
* Current/former employees with internal access/knowledge.
* Types:
    * First party insiders: employees
    * Third party insiders: vendors, auditors, contributors, commercial partners
    * Related insiders: friends, family.
* consider both well intended insiders who hade a mistake, attackers who are taking over employee account, or a malicious employee.
* Consider: Actor/Role, their motivate, actions they are taking at the target
* Least privilege, zero trust, multi party auth, business justifications, auditing, detection, recoverability are all effective system design strategies.

## Attacker Methods
* Various frameworks for studying attacker methods:

### Threat Integlligence
* Detailed descriptions of attacks seen in the wild
* Written reports - how attacks occurred
* Indicators of compromise (IOC)
* Malware reports - capabilities of attacker tools, source of IOC's. Reverse engineering

### Cyber Kill Chains
* List all possible steps than an attacker may have to take to compromise.

### TTP (Tactics, Techniques, and Procedures)
* MITRE developed ATT&CK framework as an example

## Risk Assessment Considerations
* You may not realise you're a target
* Attack sophistication is not a true predictor of success - simple and cost effective will be the go to for attackers
* Don't underestimate your adversary
* Attribution is hard - attackers are able to hide their motives/identity creatively.
* Attackers aren't always afraid of being caught