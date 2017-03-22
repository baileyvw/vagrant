#!/bin/bash

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# Download Starter Content
# Go to the git repo and find the files directory and then select it.
# click on the file so that you can see it
# Then select the raw button which will display the file.
# then copy that url and place in this file as per example.
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/baileyvw/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/baileyvw/vagrant/master/files/info.php

service httpd restart:wq!
