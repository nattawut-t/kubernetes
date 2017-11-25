#!/bin/sh
project_id=dark-garden-166716
version=1.0.0
# 
docker rmi -f gcr.io/$project_id/url-shortener-app:$version
docker build -t gcr.io/$project_id/url-shortener-app:$version ../url-shortener-app
# docker images
gcloud docker -- push gcr.io/${PROJECT_ID}/url-shortener-app:$version
