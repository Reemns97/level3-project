INSTANCE = reemns97/user
TESTDB = reemns97/user-db


build:
	docker build -t $(INSTANCE) .

build-db:
	docker build -t $(TESTDB) -f docker/user-db/Dockerfile docker/user-db/

run: 
	docker run -d --name user-db -h user-db $(TESTDB)
	docker run -d --name db-user -p 8084:8084 --link user-db -e MONGO_HOST="user-db:27017" $(INSTANCE)

