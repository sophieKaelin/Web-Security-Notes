## Security Models
What is it?
* Formally defined definition of set access control rules independent of tech + implementation platform
* Implemented outside of OS, Networks, DBMS, back office, app and server software
* Various styles:

Programmatic access control
* matrix of user privledges stored in DB applied programmaticly, 
* Includes roles, groups, individual users, collections, workflows, processes
* Granular

Discretionary Access Control (DAC)
* constraints based on users or named groups of users
* Owners of resources/functions delegate access permissions
* Very complex to design and manage (lots of individuals in charge of delegating access)

Mandatory Access Control (MAC)
* centrally controlled system of controls
* Very different to DAC : new user control over access
* Associated with military clearance-based systems

Role-based Access Control (RBAC)
* Named roles desined to which access privledges assigned
* Users assigned 1+ roles
* Enhanced management over models.
* Easy to revoke and define group membership

