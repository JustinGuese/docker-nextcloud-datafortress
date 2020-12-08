#!/bin/bash 
#/home/justin/docker/atbootstartup.sh
cd /home/justin/docker
docker-compose up -d &
prefect server start &
prefect agent local start &
docker-compose --file /home/justin/docker/docker-nextcloud/docker-compose.yml up -d &
docker-compose --file /home/justin/docker/docker-transmission-openvpn/docker-compose.yml up -d &
docker-compose --file /home/justin/docker/docker-autoscout-crawler-ingestor/docker-compose.yml up -d 


