#!/usr/bin/env bash

tail -f /var/log/system.log |
while read LINE
do
  echo $LINE
done
