docker build -t todo-app:1.0 .
docker images todo-app
docker run -d --name todo -p 5000:5000 todo-app:1.0
docker ps
curl http://localhost:5000/api/tasks
docker logs todo
# docker login ; docker tag todo-app:1.0 <dockerhub-username>/todo-app:1.0 ; docker push <dockerhub-username>/todo-app:1.0
# docker stop todo && docker rm todo
