Virtualhost Manage Script
===========

Bash Script to allow create or delete apache virtual hosts and optionally install drupal on Ubuntu in a quick way.

## Installation ##

1. Download the scripts
2. Apply permission to execute:

        $ chmod +x /path/to/virtualhost.sh
  
3. Optional: if you want to use the script globally, then you need to copy the file to your /usr/local/bin directory, is better
if you copy it without the .sh extension:

        $ sudo cp /path/to/virtualhost.sh /usr/local/bin/virtualhost

### For Global Shortcut ###

        $ cd /usr/local/bin
        $ wget -O virtualhost https://raw.githubusercontent.com/RoverWire/virtualhost/master/virtualhost.sh
        $ chmod +x virtualhost
  
## Usage ##

Basic command line syntax:

    $ sudo sh /path/to/virtualhost.sh [create | delete] [domain]
    
With script installed on /usr/local/bin

    $ sudo virtualhost [create | delete] [domain]

### Examples ###

to create a new virtual host:

    $ sudo virtualhost create mysite.dev
  
to delete a virtual host

    $ sudo virtualhost delete mysite.dev
