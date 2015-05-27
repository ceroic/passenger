#!/bin/sh
if [ -d "/home/app/server/log/" ]
then
  echo "Setting permissions on log directory..."
  chmod -R /home/app/server/log
else
  echo "No log directory found, skipping. d"
fi
