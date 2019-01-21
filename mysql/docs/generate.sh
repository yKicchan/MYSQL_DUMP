#!/bin/bash

mysqldump -X -u $MYSQL_USER -p$MYSQL_PASSWORD --no-data $MYSQL_DATABASE > ./dump.xml

xsltproc -o schema.md style.xsl dump.xml
