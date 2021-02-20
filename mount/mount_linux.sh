#!/bin/bash
if [ ! $1 ];then
echo "[ERROR] mount not input src IP address !"
echo "like 192.168.1.100:/home/ubuntu/share"
fi
IP_address=$1
mount -t nfs -o nolock $IP_address .