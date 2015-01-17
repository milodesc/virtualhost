#!/bin/bash
dbuser=$3
dbpwd=$4
while [ "$dbuser" == "" ]
do
        echo -e "Please the database username."
        read dbuser 
done

while [ "$dbpwd" == "" ]
do
        echo -e "Please the database password."
        read -s dbpwd
done


command -v drush >/dev/null 2>&1 || { echo "This script requires drush, but it's not installed.  Aborting." >&2; exit 1; }

source ./virtualhost.sh
drush dl drupal --drupal-project-rename=$rootdir --destination=$userDir --yes
cd $userDir$rootdir

drush site-install standard --db-url="mysql://$dbuser:$dbpwd@localhost/$rootdir" --site-name=$rootdir --account-pass=admin --yes

echo -e "Complete! \nYou now have a new Drupal site. \nYour new host is: http://"$domain" \nAnd its located at "$userDir$rootdir
		
