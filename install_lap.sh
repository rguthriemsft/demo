#!/bin/bash

# install Apache and PHP
apt-get -y update
apt-get -y install apache2 php5

# write some PHP
cd /var/www/html
wget https://raw.githubusercontent.com/rguthriemsft/demo/master/index.php
wget https://raw.githubusercontent.com/rguthriemsft/demo/master/do_work.php
rm /var/www/html/index.html
# restart Apache
apachectl restart

