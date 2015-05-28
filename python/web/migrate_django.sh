#!/bin/sh
if [ -z "$MIGRATE_DJANGO" ]
then
  echo "Skipping Django Migrate"
else
  echo "Migrating Django"
  ./home/app/server/manage.py migrate
fi
