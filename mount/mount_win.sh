#!/bin/bash
if [ ! $1 ];then
echo "[ERROR] mount not input src IP address !"
echo "like //192.168.1.100/share"
fi
if [ ! $2 ];then
echo "[ERROR] mount not input win user name !"
fi
if [ ! $3 ];then
echo "[ERROR] mount not input win user password !"
fi
IP_address=$1
username=$2
password=$3
mount -t cifs -o username=$username,password=$password,iocharset=utf8,dir_mode=0770,file_mode=0770 \
$IP_address .
