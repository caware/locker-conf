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


Installed Mongo
---------------

Tried to install mongo acording to set up docs, upstart scripts were not installed correctly.

Removed and installed Debian standard version:


    `sudo apt-get install mongodb`


