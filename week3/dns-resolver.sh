#! /bin/bash

net=$1
server=$2
echo "dns resolution for $net"
for host in `seq 1 254`; do
  nslookup $net.$host $server | grep "name ="
done
