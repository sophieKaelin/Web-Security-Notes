# OAuth
* Log in using social media / google account
* extremly common use of authentication
* prone to implementation mistakes
* note: these are specific to OAuth 2.0

What is OAuth
* enables websites to request limited access to a user's account on another application
* grants this access without exposing a users login credentials to the requesting application
* e.g. can be used to gain access to email contact list -> but that functionality can be exploited to gain more information
* 1.0 and 2.0 are very different (since 2.0 was written from scratch)

How does it work
* Defines a series of interactions between 3 parties
   	* Client app (who wants to access the data)
   	* Resource owner (user with data the client wants to access)
   	* OAuth service provider (website/app that controls the user's data/access to it. Provides API for interacting)
* Different ways of being implemented (flows/grant types)
   	* Authorization code and implicit are the most common
   	* 1. Client requests access to subset of data. Specify which grant type and what kind of access they want
   	* 2. User prompted to log in to OAuth service (give consent)
   	* 3. Client app recieves unique access token (proves permission granted from user to access data). This step varies by grant type
   	* 4. Client application uses access token to make API calls to resource server

OAuth Authentication
* To authenticate, the flow is mostly the same.
* Difference -> how client app uses the data it recieves.
* Similar experience to SAML based single sign on (SSO)
* Implementation
   	* user log in with social media account
   	* client uses social site's OAuth service to request access to some data to identify user
   	* recieve access token, client app requests data from resource server (usually /userinfo endpoint)
   	* recieve data, populates internal username field to log in user.
   	* access token acts as a password

How Vulns Arise
* specification is vague and flexible by design
   	* majority of implemention is optional beyond basic functionality
* A lot of config settings are not set correctly
* General lack of built-in security features
   	* relies on dev to combine config options and additional sec measures on top (input validation?)
* Depending on grant type, highly sensitive data can be sent via browser (interception opportunities)

Recon
* /.well-known/oauth-authorization-server
* /.well-known/openid-configuration

