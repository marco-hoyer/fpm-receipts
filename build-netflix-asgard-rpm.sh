#!/bin/bash

VERSION=1.5

rm -f asgard.war
wget https://github.com/Netflix/asgard/releases/download/asgard-$VERSION/asgard.war
fpm -s dir -t rpm -n asgard -v $VERSION -d tomcat7 --rpm-os linux --url https://github.com/Netflix/asgard --prefix /usr/share/tomcat7/webapps asgard.war
