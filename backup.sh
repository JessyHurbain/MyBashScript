#!/bin/bash

#Format Hours / Minutes / Day / Month / Years
DATE=$(date +%H-%M-%d-%m-%y)
if [ -d "${DATE}" ]
then
  echo "The directory ${DATE} already exists..."
  echo
else
      #Save list softwares installed.
      echo "Save softwares installed..."
      dpkg --get-selections > /Destination/$DATE
      sleep 3
      echo "Save list softwares install succeeded"

      echo "Backup running..."
      #Add custom directory source and destination
      # exclude The files assigned in the example.txt with  --exclude-from="/destination/example.txt"
      rsync -r --progress --delete --exclude-from="/example.txt" /source /destination/$DATE
      echo "Backup succeeded"
fi
