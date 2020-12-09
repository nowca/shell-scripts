# several basic shell scripts

Some simple, but useful shell scripts for everyday work.

### Apache2 DocumentRoot-Path setter

* `apchere.py` - Sets the Apache WebServer DocumentRoot-Path on a specific Port, just by running it in desired folder. The Script works with RegEx, please backup the Config-File "e.g. 000-default.conf" before running the script. Dont forget to grant the related folder rights in Apache-Config file and filesystem.

### Domain whois script

* `dcheck.sh` - Checks availability of a domainname with an array of domain endings. Uses RegEx on the response-text of whois requests to determine, if Domain is free or not.

### MD5 Folder hasher

* `md5folder.sh` - Traverses a Folder and generates MD5 checksums of each file.