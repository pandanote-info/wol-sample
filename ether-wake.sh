#!/bin/sh

if [ -z "$2" ]; then
    echo "Usage: $0 <source IP address> <target MAC address>"
    exit 1
fi

SRC_IP=$1
TARGET=$2

IP_CHECK=`ip addr show | grep ${SRC_IP}`

if [ -n "${IP_CHECK}" ]; then
    /usr/sbin/ether-wake ${TARGET}
fi
