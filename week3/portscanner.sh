#! /bin/bash

hosts=$(cat $1 | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
ports=$(cat $2 | grep -E '[0-9]{1,5}')
echo "host,port"
for host in $hosts; do
  for port in $ports; do
    timeout .5 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port"
  done
done
