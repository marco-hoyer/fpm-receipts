#!/bin/bash

VERSION=1.5
RELEASE=2

rm -f asgard.war
wget https://github.com/Netflix/asgard/releases/download/asgard-$VERSION/asgard.war
mv asgard.war ROOT.war
fpm -s dir -t rpm -n asgard -v $VERSION --iteration $RELEASE -d tomcat7 -d tomcat-native --rpm-os linux --url https://github.com/Netflix/asgard --prefix /usr/share/tomcat7/webapps ROOT.war
rm ROOT.war
