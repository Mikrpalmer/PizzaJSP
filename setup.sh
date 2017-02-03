#!/bin/bash
date
apt-get -qq update && apt-get -qq -V upgrade
apt-get -qq install locate mlocate
updatedb
apt-get -qq install -y ntp
apt-get -qq install -y apache2 apache2-mpm-prefork
systemctl restart apache2.service
apt-get -qq install -y php5
apt-get -qq install -y php5-mysqlnd
apt-get -qq install -y php5-gd
apt-get -qq install -yphp5-curl
apt-get -qq install -y git
apt-get -qq install -y s3cmd
apt-get -qq install -y mc p7zip-full htop
apt-get -qq install -y debian-goodies
apt-get -qq install -y rkhunter
checkrestart
apt-get update && apt-get -V upgrade
updatedb
