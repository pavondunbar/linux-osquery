#!/bin/bash

# OsQuery Shell Script written by Pavon Dunbar

# This script, when executed, will install OsQuery on the requestor's server.

echo "Welcome to OsQuery. Executing this script will install OsQuery on your server. NOTE: This installation is good for Ubuntu version 18.04."
echo
echo "To cancel installing OsQuery, please press CTRL + C now."
echo
read -p "Press Enter to install OsQuery on your system"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
apt-get install software-properties-common python-software-properties -y
add-apt-repository "deb [arch=amd64] https://osquery-packages.s3.amazonaws.com/xenial xenial main"
apt update -y
apt install osquery -y
echo
echo "Congratulations! OsQuery has been installed successfully on your system. Visit https://osquery.io for frequently used commands and more information."
echo
echo "Would you like to begin using OsQuery now? Please type in yes or no below:"
read b;
if [ "$b" == "yes" ]
then
        echo
        osqueryi
else
        echo
        echo "No worries. To begin using OsQuery, simply type osqueryi at the command prompt."
fi
