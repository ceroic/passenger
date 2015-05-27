#!/bin/sh
if [ -f /home/app/requirements.txt ]
then
  echo "Installing python requirements from /home/app/requirements.txt"
  pip install -r /home/app/requirements.txt
else
  echo "No requirements file found, skipping installation."
fi
