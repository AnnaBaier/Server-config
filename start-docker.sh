#!/bin/bash
cd /home/anna/docker
docker network create proxy

mkdir -p traefik-persistence
docker-compose down
sudo chmod -R 777 traefik-persistence
touch traefik-persistence/acme.json
sudo chmod 600 traefik-persistence/acme.json
docker-compose up -d --build

cd Homepage
docker-compose down
docker-compose up -d --build
cd ..

cd Snake.js
mkdir -p pgdata
docker-compose down
sudo chmod -R 777 pgdata
docker-compose up -d --build
cd ..

cd fubati
docker-compose down
docker-compose up -d --build
