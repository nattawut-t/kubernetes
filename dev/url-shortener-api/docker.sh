#!/bin/sh
project_id=dark-garden-166716
version=1.0.0
# 
docker rmi -f gcr.io/$project_id/url-shortener-api:$version
docker build -t gcr.io/$project_id/url-shortener-api:$version ../url-shortener-api
# docker images
gcloud docker -- push gcr.io/$project_id/url-shortener-api:$version
