
apt-get -qq update && apt-get -qq -V upgrade
apt-get install locate mlocate
updatedb
apt-get install ntp
apt-get install apache2 apache2-mpm-prefork
systemctl restart apache2.service
apt-get install php5
apt-get install php5-mysqlnd
apt-get install php5-gd
apt-get install php5-curl
apt-get install git
apt-get install s3cmd
apt-get install mc p7zip-full htop
apt-get install debian-goodies
checkrestart
apt-get update && apt-get -V upgrade
updatedb
