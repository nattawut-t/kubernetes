docker-compose -f dev/docker-compose.yml up --build -d --force-recreate
gcloud docker -- push gcr.io/${project_id}/authen-api:${version}
gcloud docker -- push gcr.io/${project_id}/url-shortener-api:${version}
gcloud docker -- push gcr.io/${project_id}/url-shortener-app:${version}