#!/bin/bash

ip a | grep wg0 >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo '{"class": "on", "percentage": 100}'
else
  echo '{"class": "off", "percentage": 0}'
fi
