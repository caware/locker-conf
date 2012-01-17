#!/bin/bash
#Check services script

if [[ $EUID -ne 0 ]]; then
    echo "You must be root or sudo!"
    exit 1
fi

/etc/init.d/ssh status
/etc/init.d/mongodb status
/etc/init.d/ufw status

exit 1