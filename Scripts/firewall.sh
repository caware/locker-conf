#!/bin/bash
#Setup ufw firewall

if [[ $EUID -ne 0 ]]; then
    echo "You must be root or sudo!"
    exit 1
fi

#Disable firewall
ufw disable

#Reset all firewall rules
#ufw reset

    
#set default deny all incoming
ufw default deny incoming
  
#set allow rules
ufw allow 22/tcp    #Allow access to sshd

 
#Enable firewall
ufw enable

#Enable logging
ufw logging on

#Print status
ufw status verbose

exit 1