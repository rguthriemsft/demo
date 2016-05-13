#!/bin/bash

# install Apache and PHP
apt-get -y update
apt-get -y install apache2 php5

# write some PHP
cd /var/www/html
wget https://raw.githubusercontent.com/rguthriemsft/demo/master/v2/index.php
wget https://raw.githubusercontent.com/rguthriemsft/demo/master/v2/do_work.php
rm /var/www/html/index.html
# restart Apache
apachectl restart

