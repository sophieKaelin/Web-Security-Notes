# File Inclusion
* [CHECKLIST](https://www.onsecurity.io/blog/file-upload-checklist/#magic-byte-forgery)
* Often used to load classes, share templates between web pages
* Vulnerability comes from lack of filtering of user-controlled parameters in file name.
* PHP:
   	* Require, require_once, include, include_once
* LFI (Local) and RFI (Remote) vulnerability escalations
* PHP disables loading remote files by default
   	* allow_url_include
* Use techniques from dir traversal to detect LFI
* Request external resources (other URLS) to detect RFI
   	*  http://assets.pentesterlab.com/test_include_system.txt.

