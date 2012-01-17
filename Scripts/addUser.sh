#!/bin/bash
#Add user script

#Check if root or sudo
if [[ $EUID -ne 0 ]]; then
    echo "You must be root or sudo!"
    exit 1
fi

#Check if argumnets set
if [ ! -n "$1" ]
then
    echo "Usage: `basename $0` newusername"
    exit 1
fi


echo $1

exit 1
