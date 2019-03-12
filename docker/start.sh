#!/bin/sh

if ! [ -n "$1" ] ; then
    echo "Please provide directory for blockchain data."
    exit 1
fi

docker stop paicoin
docker rm paicoin

chown -R dockeruser "$1"

docker run --restart=always -d --name paicoin \
    -p 8332:8332 \
    -v "$1":/opt/graphsense/data \
    -it paicoin
docker ps -a
