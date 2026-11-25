#!/usr/bin/env bash
# usage: ./docker_hub_commands.sh <dockerhub-username>
U=${1:?usage: ./docker_hub_commands.sh <dockerhub-username>}
docker build -t static-web . && docker images
docker login -u $U                       # use an access token as the password
docker tag static-web $U/static-web:1.0
docker tag static-web $U/static-web:latest
docker push $U/static-web:1.0 && docker push $U/static-web:latest
# --- on the second machine / Play with Docker ---
# docker pull $U/static-web:1.0
# docker run -d --name web -p 8080:80 $U/static-web:1.0 && curl http://localhost:8080
