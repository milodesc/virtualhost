command -v drush >/dev/null 2>&1 || { echo "This script requires drush, but it's not installed.  Aborting." >&2; exit 1; }
drush dl drupal --drupal-project-rename=$rootdir --destination=$userDir --yes
cd $userDir$rootdir

while [ "$dbuser" == "" ]
do
	echo -e "Please enter the database username."
	read dbuser 
done

while [ "$dbpwd" == "" ]
do
	echo -e "Please enter the database password."
	read -s dbpwd
done

account_pass="admin"
drush site-install standard --db-url="mysql://$dbuser:$dbpwd@localhost/$rootdir" --site-name=$rootdir --account-pass=$account_pass --yes
echo -e "Drupal installed! \nYou now have a new Drupal site. \nYour new host is: http://"$domain" \nIt's located at $userDir$rootdir"