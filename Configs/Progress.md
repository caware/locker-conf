Locker Setup Progress
=====================


Installed Sudo
--------------

Installed sudo so lockeruser can sudo anything, using the root password:

`apt-get install sudo`
`visudo`

    # /etc/sudoers
    Defaults    env_reset, rootpw
    
    # Host alias specification
    
    # User alias specification
    
    User_Alias MYADMINS = lockeruser
    
    
    # Cmnd alias specification
    
    # User privilege specification
    
    root    ALL=(ALL) ALL
    
    MYADMINS ALL = ALL

Installed DenyHosts
-------------------

Installed DenyHosts to prevent sshd attacks.

`sudo apt-get install denyhosts`
`sudo nano /etc/denyhosts.conf`

    ADMIN_EMAIL = cce25@cam.ac.uk
    
    SMTP_SUBJECT = DB1.locker DenyHosts Report
    
`sudo /etc/init.d/denyhosts restart`

Installed UFW
-------------

`sudo apt-get install ufw`
`nano firewall.sh`

    #!/bin/bash
    
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

Installed Mongo
---------------

Tried to install mongo acording to set up docs, upstart scripts were not installed correctly.

Removed and installed Debian standard version:


    `sudo apt-get install mongodb`


