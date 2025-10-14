#!/bin/bash

SERVICE_NAME="nordvpnd"

systemctl is-active --quiet "$SERVICE_NAME"

if [ $? -eq 0 ]; then
  echo '{"class": "on", "percentage": 100}'
else
  echo '{"class": "off", "percentage": 0}'
fi
