#!/bin/bash
service=nginx
#service is-active --quiet - used to check the service is running or not
if ! service is-active --quiet $service; then
systemctl restart $service
else
echo "$service is active and running"
fi
