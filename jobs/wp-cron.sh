#!/bin/sh
set -e

url=http://datagov.apps.cloud.gov/wp/wp-cron.php?doing_wp_cron
echo "Trying to wget $url"
wget $url > /dev/null 2>&1 || { echo >&2 "wget Not found. Aborting."; exit 1; }
echo "Done"
