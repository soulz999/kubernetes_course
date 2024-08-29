#docker run -d --name=redis redis
#docker run -d --name=db postgres:9.4
#docker run -d --name=vote -p 5000:80 voting-app
#docker run -d --name=result -p 5001:80 result-app
#docker run -d --name=worker worker

# The commands above do not link the apps together. For that we will need the following commands:
docker run -d --name=redis redis
docker run -d --name=db postgres:9.4
#This link creates a line in the /etc/hosts with redis_ip followed by redis name as well with redis_container_id
docker run -d --name=vote -p 5000:80 --link redis:redis voting-app
docker run -d --name=result -p 5001:80 --link db:db result-app
docker run -d --name=worker --link redis:redis --link db:db worker

#Links are deprecated. Nowadays it can be created using docker swarm
