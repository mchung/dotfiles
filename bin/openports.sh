#!/bin/sh

r="netstat -an | grep -i listen"
delim="-"
if [ $# -eq 0 ]; then
    echo "please specify a protocol (unix or tcp)"
    exit 1
fi
if [ $1 == "unix" ]; then
    delim=",9"
elif [ $1 == "tcp" ]; then
    delim=",4"
else
    echo "currently only supports unix and tcp"
    exit 1
fi
r="$r | grep \"$1\" | tr -s ' ' | cut -d' ' -f1$delim"
eval $r
