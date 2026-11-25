#!/usr/bin/env bash
# usage: ./deploy.sh <dockerhub-username>
U=${1:?usage: ./deploy.sh <dockerhub-username>}
docker build -t $U/flask-api:1.0 .
docker run -d -p 5000:5000 --name api $U/flask-api:1.0 && sleep 2 && curl http://localhost:5000/api/students
docker stop api && docker rm api
docker login && docker push $U/flask-api:1.0
sed -i "s#<dockerhub-username>#$U#" deployment.yaml
kubectl apply -f deployment.yaml && kubectl apply -f service.yaml
kubectl get deployments && kubectl get pods -o wide && kubectl get svc
curl http://localhost:30007/ ; curl http://localhost:30007/api/students   # Minikube: minikube service flask-api-service --url
