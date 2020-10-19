network:
	docker network create catalogue-network
build:
	docker build --tag reemns97/catalogue .

run:
	docker run -it --net catalogue-network -p 8081:80 reemns97/catalogue 
