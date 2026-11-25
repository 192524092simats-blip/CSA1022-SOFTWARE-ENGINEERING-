docker --version
docker run hello-world
docker build -t static-site:1.0 .
docker images
docker run -d --name mysite -p 8080:80 static-site:1.0
docker ps
# open http://localhost:8080
# clean up: docker stop mysite && docker rm mysite
