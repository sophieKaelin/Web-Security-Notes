## UNION attack
INFO
* Will retrieve data from another table
* Lets you execute an additional SELECT query
* e.g: ' UNION SELECT username, password FROM users--

Requirements
* Individual queries must return same number of columns
* Data types in each column must be compatible between individual queries

STEPS
0. Check the type of database first so you know the syntax (found in the cheat sheet)
1. Find out how many columns returned from OG Query
   	* Try ‘ORDER BY 1-- then ’ORDER BY 2-- etc until there is an error -> that's how many columns there are.
   	* Try ‘ UNION+SELECT+NULL,NULL ... => continue adding null’s until there are no errors, that's how many columns there are.
2. Which columns returned from the OG query 
3. Are the columns returned from query of suitable datatype to hold results from injected query.
   	* Most of the data you want will likely be in a string format
   	* Test a sample of payloads with a value in each column:
      		* ‘ UNION SELECT ’a',NULL,NULL,NULL-- => and iterate where ‘a’ sits. Incompatible datatypes will return an error
4. Retrieve the data (List contents from DB)
   	* examine what other databases are available for you to attack. (go to Examine DB Node)

If you want to retrieve multiple values in single column
* concatenate values together
* different concatentation syntax for different DB, look HERE
* Good to have a seperator inbetween: username||'~'||password

