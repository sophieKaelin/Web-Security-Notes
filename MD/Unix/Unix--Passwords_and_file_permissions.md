# Stored Passwords and File Permissions

## Stored Passwords
* Run `history` command -> maybe there is a password there?
* `cat bash_history` will do the same ^
* Find files containing passwords for dir you're in:
    * `find . -type f -exec grep -i -I "PASSWORD" {} /dev/null \;`

## Weak File Permissions
* 