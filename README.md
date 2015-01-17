Virtualhost Manage Script
===========

Bash Script to allow create or delete apache virtual hosts and optionally install drupal on Ubuntu in a quick way.

## Installation ##

1. Download the scripts
2. Apply permission to execute:

        $ chmod +x /path/to/virtualhost.sh
        $ chmod +x /path/to/drupal_virtualhost.sh
  
## Usage ##

Basic command line syntax:

    $ sudo sh /path/to/virtualhost.sh [create | delete] [domain] 
	OR
    $ sudo sh /path/to/drupal_virtualhost.sh [create | delete] [domain] [database user] [database password]
    

### Examples ###

to create a new virtual host:

    $ sudo virtualhost create mysite.dev
  
to delete a virtual host

    $ sudo virtualhost delete mysite.dev
