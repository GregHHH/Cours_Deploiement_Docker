cd vote

docker build . -t voting-app
docker images
docker run -d --name=redis redis
docker run -d -p 3000:80 --link redis:redis  voting-app

cd ../

docker run -d --name db -e POSTGRES_PASSWORD=postgres:9.4 postgres:9.4

cd worker

docker build  . -t worker 
docker run --link db:db --link redis:redis worker 

cd result 
docker build . -t result 
docker run --link db:db -p 5001:80 result 