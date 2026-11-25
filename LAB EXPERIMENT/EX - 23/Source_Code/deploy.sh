#!/usr/bin/env bash
# usage: ./deploy.sh <dockerhub-username>
U=${1:?usage: ./deploy.sh <dockerhub-username>}
minikube start --cpus=2 --memory=4096 && minikube addons enable metrics-server
kubectl create namespace multiapp && kubectl config set-context --current --namespace=multiapp
docker build -t $U/k8s-backend:1.0 backend && docker build -t $U/k8s-frontend:1.0 frontend
docker push $U/k8s-backend:1.0 && docker push $U/k8s-frontend:1.0
sed -i "s#<dockerhub-username>#$U#" k8s/backend.yaml k8s/frontend.yaml
kubectl apply -f k8s/mysql.yaml && kubectl apply -f k8s/backend.yaml && kubectl apply -f k8s/frontend.yaml
kubectl get all
kubectl scale deployment frontend --replicas=4 && kubectl get pods
minikube service frontend-service -n multiapp --url
minikube dashboard
