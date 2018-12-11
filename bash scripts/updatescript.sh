#!/bin/sh
#This script is making sure all packets are up to date and making the
#the server ready to be configured
echo "Starting Update and Upgrade"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
