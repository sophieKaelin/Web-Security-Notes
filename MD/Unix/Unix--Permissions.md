## Permissions
Permissions in Linux
* combo of bits used to store permissions of files (rwx)
* These can be changed with chmod command
* ownership of files depends on UID and GUID (user and group id's)
* view permissions of a file by running:
   	* ls -l <FILE>
* Octal codes for setting permissions
   	* 777 will set read, write and execute for all users.

String structure
* sample
   	* -rwxr--r-- levelsOfDirectories username groupname size date time filename
* 3 sections
   	* 1-3 owners permissions
   	* 4-6 group permissions
   	* 7-9 anyone permissions
* if there is a d out the front, it's talking about a directory

setuid
* for files with executable permissions
* when running the file, permissions set to owner user, not launching user.
* basically, you run the file as root
* if you see an ‘s’ instead of ‘x’ in the permission string for “owner”
* to change the setuid
   	* set -> chmod u+s
   	* remove -> chmod u-s

setgid
* executes with privileges of the group of the owner user, rather than group of executor
* if you see an ‘s’ instead of ‘x’ in the permission string for “group” 
* to change the setgid
   	* set -> chmod g+s
   	* remove -> chmod g-s

Sticky Bit
* files can be deleted / renamed by the file owner, fir owner or root usr
* set -> chmod +t
* remote -> chmod -t

