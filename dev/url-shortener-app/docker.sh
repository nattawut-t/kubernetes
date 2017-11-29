#!/bin/sh
project_id=dark-garden-166716
version=1.0.0
# 
docker rmi -f gcr.io/$project_id/url-shortener-app:$version
# docker build -t gcr.io/$project_id/url-shortener-app:$version ../url-shortener-app
docker build \
        -f ../url-shortener-app/Dockerfile.dev \
        -t gcr.io/$project_id/url-shortener-app:$version \
        ../url-shortener-app/
# docker images
# gcloud container images list
# gcloud beta container images delete gcr.io/$project_id/url-shortener-app:$version
gcloud docker -- push gcr.io/$project_id/url-shortener-app:$version
