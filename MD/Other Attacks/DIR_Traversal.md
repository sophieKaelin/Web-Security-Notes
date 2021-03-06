# DIR Traversal
What is it?
* attack that allows reading of arbitrary files on server running the app
* Look for files that might be stored on the server

Reading Arbitrary files
* images often at /var/www/images
* if no defences:
   	* https://insecure-website.com/loadImage?filename=../../../etc/passwd
* Just keep adding ../ until you get to the etc folder.

Common Obstacles
* Try just a straight filename=/etc/passwd
   	* Might just find it.
* Try to use nested traversal sequences
   	* ....//
   	* ....\/
* Use non-standard encodings:
   	* ..%c0%af
   	* ..%252f
* You might need to keep part of the filepath name
   	* Try variations or keeping it there and traversing back
   	* filename=/var/www/images/../../../etc/passwd
* Sometimes you've got an expected file extension. Use null byte to terminate file path THEN add the extension
   	* passwd%00.png
* Use the Null Byte (try in lots of places, at the end?)
   	* %00

Windows
* test/../../../file.txt
*  $file = "/var/files/example_".$_GET['id'].".txt";

Prevention
* avoid passing user supplied input to filesystem APIs
* If its unavoidable employ 2 layers of defense
   	* validate user input before processing. Against allowlist or make sure it's alphanumeric
   	* append input to base dir. Use platform filesystem API to canonicalise path
      		* Validation of canonical path sample code.
File file = new File(BASE_DIRECTORY, userInput);
  if (file.getCanonicalPath().startsWith(BASE_DIRECTORY)) {
    // process file
  }

