#!/bin/bash

# Install Git and Nano
#yum install -y git
#yum install -y nano
#yum update -y
echo " Updating system"
sudo yum update -y 
echo " Installing git unzip and screennc telent"
sudo yum install -y git unzip screen nano nc telent
echo " yum update system"
sudo yum update -y 

