docker build -t docker_test .

docker tag docker_test ubuntu/docker_test:version1.0

docker run -d -p 5001:5000 --name docker_test ubuntu/docker_test:version1.0