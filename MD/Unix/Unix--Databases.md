## Databases
My SQL
* try accessing mysql root user (sometimes there is no password)
   	* mysql -u root
   	* jump around and look at tables and databses.
   	* show databases, use [database], show tables, queries
* Find Mysql passwords
   	* in /var/lib/mysql/mysql/user.MYD -> crack that password using JOHN (in two different parts, merge for username:*pwd1pwd2)
* Command Injection through SQLI MySQL
   	* use the load_file function
   	* select load_file('<FILE-PATH>') as Result;

Postgres
* access DB by running “psql”
* \list
* \c [database] -> selects your db
* \d lists tables
* don't forget ;
* Create table and read data into that table
   	* CREATE TABLE demo(t text);
   	* COPY demo from ‘<FILEPATH>’;
   	* SELECT * FROM demo;

SQLite
* sqlite3 <filename> loads the db
* .tables gets a list of the tables
* 

