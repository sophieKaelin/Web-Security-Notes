## Commands
Commands

* Read a file: cat <file-name>
* If you don't have permission to access a folder, but you know there is a file in the folder, try cating it from the parent dir
* View history of bash shell: find .bash_history
* search for file: find -name <file-name>
* search for multiple files in directories: find <dir> -name <file-name>
* search for keywords: grep [PATTERN] {} \;
* search within a find request: find <dir> -name <FILE-NAME> -exec grep [PATTERN] {} \;
   	* all exec commands need to end with {} \;
* unzip TGZ file
   	* tar -xvzf <FILE>
* unzip TBZ, BZ2 file
   	* bzip2 -d <FILE>
* unzip TAR file
   	* tar -xvf <file>
* Delete DIR and contents: rm -r <folder>
* If you don't know the file extension, but want to view file contents
   	* file <FILE> (will tell you format/extension)
   	* strings <FILE>
* Login as user
   	* su <username>
* sudo
   	* allows you to run commands as another user
   	* usually used to run commands as root
   	* running sudo -l will tell you what commands you can run
   	* If you can run commands for another user do: sudo -u <user> /bin/bash
* Run a bash shell
   	* !/bin/bash

Syntax/Special Characters
* ^ = means start of the line

