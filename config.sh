#!/bin/sh

CID=`docker ps | grep dockvpn | awk '{ print $1 }'`
IMAGE=`docker ps | grep dockvpn | awk '{ print $2 }'`
docker run -t -i -p 8080:8080 --volumes-from $CID $IMAGE serveconfig
