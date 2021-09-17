#! /bin/bash

net=$1
port=$2
echo "host,port"
for host in `seq 1 254`; do
  timeout .1 bash -c "echo >/dev/tcp/$net.$host/$port" 2>/dev/null && echo "$net.$host,$port"
done
