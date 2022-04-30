#!/bin/sh
set -e

PARAMETERS_FILE='/var/www/html/app/config/parameters.php'

mkparameters > $PARAMETERS_FILE
chown -R www-data:www-data /var/www/html/app
chown -R www-data:www-data /var/www/html/web

# start cron in the background
crontab /etc/cron.d/partkeepr && cron

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- apache2-foreground "$@"
fi

exec "$@"
