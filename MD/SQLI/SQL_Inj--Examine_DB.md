## Examine DB
Querying DB Type and Version
* Different db's have different ways of querying. Try different commands to determine what type of DB in use

* Incorporate this into a UNION attack
* ORACLE: every SELECT must specify a FROM
   	* There is a built in table called DUAL if you need to provide one.
* HINTS HERE: https://portswigger.net/web-security/sql-injection/cheat-sheet

Listing the contents of the database
* Most (except Oracle) have an information table in the db
* SELECT * FROM information_schema.tables
   	* Finds the name of all the tables
   	* Columns in this table include: table_name, table_type
* SELECT * FROM information_schema.columns WHERE table_name = ‘<INSERT_NAME>’
   	* Returns the columns from the specified table.
   	* Columns in this table include: column_name, data_type
* From here seach for tables with things like “user credentials” in it.
* Use the information you discovered from your union attack, to display the information.

* What about Oracle?
* Oracle has different commands:
* SELECT * FROM all_tables
* SELECT * FROM all_tab_columns WHERE table_name = ‘USERS’
   	* Columns like: table_name, column_name are handy to check. You can always google others.

