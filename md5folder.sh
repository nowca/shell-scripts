#!/bin/bash

find . -type f -print0 | while read -d $'\0' file; do md5sum "$file" | sed -r 's/([a-zA-Z0-9]+)  (.+)/\2\n\1\n/'; done;