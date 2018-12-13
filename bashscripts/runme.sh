#!/bin/bash
#This is the main bash script it will call the scripts nessesarry to configure
#apache2 as a web proxy
./updatescript.sh
./installrwp.sh
./rwpconfig.sh
./networkconfig.sh
