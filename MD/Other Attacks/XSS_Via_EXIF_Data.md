# XSS Via EXIF Data
https://shahjerry33.medium.com/xss-via-exif-data-the-p2-elevator-d09e7b7fe9b9

## What is EXIF
* Exchangeable Image File Format
* Information stored by images
    * JPG, TIFF, PNG, JP2, MIFF, HDP, PSP, XCF, AVI, MOV
* data organised into different Image File Directories (IFD's) within an image

## The attack
* One tag good for attack is "UserComment" or "ImageDescription"
* No character code limitations in UserComment tag
* Read by Exif/DCF reader
* Lots of other image processign libraries that process the data
    * Some don't sanitise the exif tags
* If the website is retrieving some of the EXIF data, you could get an XSS to pop

## Tools to do this
* ImageMagick - to update exif data
* exiftool - to update exif data
* http://exif.regex.info/exif.cgi -> to view the data