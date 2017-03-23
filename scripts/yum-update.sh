#!/bin/bash
#echo " Updating system"
#sudo yum update -y 
#echo " Installing git unzip and screen"
#sudo yum install -y git unzip screen
#echo " yum update system"
#sudo yum update -y 
echo " install EPEL repo for centos 6.x"

## RHEL/CentOS 6 64-Bit ##
# wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
# rpm -ivh epel-release-6-8.noarch.rpm
echo "# wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm"
sudo wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

# rpm -ivh epel-release-6-8.noarch.rpm
echo "# rpm -ivh epel-release-6-8.noarch.rpm"
sudo rpm -ivh epel-release-latest-6.noarch.rpm
# install atop
echo " installing atop"
sudo yum install -y atop
