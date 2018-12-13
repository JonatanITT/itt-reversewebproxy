#!/bin/bash
#This is the main bash script it will call the scripts nessesarry to configure
#apache2 as a web proxy
sudo ./updatescript.sh
sudo ./installrwp.sh
sudo ./rwpconfig.sh
sudo ./networkconfig.sh
