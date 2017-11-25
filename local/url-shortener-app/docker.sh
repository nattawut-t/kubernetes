#!/bin/sh
version=1.0.0
# 
docker rmi -f url-shortener-app:$version
docker build -t url-shortener-app:$version ../url-shortener-app
# docker images
docker run \
        --name url-shortener-app \
        -p 8080:8080 \
        -d url-shortener-app:1.0.0
