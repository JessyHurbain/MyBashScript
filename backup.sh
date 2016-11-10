#!/bin/bash

DATE=$(date +%Hh%M-%d-%m-%y)
if [ -d "${DATE}" ]
then
  echo "The directory ${DATE} already exists..."
  echo
else
      echo "Backup running ..."
      #Add custom directory source and destination
      rsync -r --progress --delete /source /destination
      echo "Backup succeeded"
fi
