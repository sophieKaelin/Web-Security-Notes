# Stored Passwords and File Permissions

## Stored Passwords
* Run `history` command -> maybe there is a password there?
* `cat bash_history` will do the same ^
* Find files containing passwords for dir you're in:
    * `find . -type f -exec grep -i -I "PASSWORD" {} /dev/null \;`

## Weak File Permissions
* `ls -la /etc/passwd`
    * regular users should have read access
    * Identifies which users are on the machine, their ID's and any groups they are a part of
    * passwords used to be stored here, now they are in "shadow"
* `ls -la /etc/shadow`
    * read should only be for root users.
    * similar to psswd file, but contains password hashes.
* Kali has a tool called "unshadow" where you input password and shadow file and the merge them.
    * Identify hash type and run these through a hash cracker (hash cat?)

## SSH Keys
* Payload all the things -> SSH Key -> Sensitive Files