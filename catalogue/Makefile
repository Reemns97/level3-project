network:
	docker network create catalogue-network
build:
	docker build --tag reemns97/catalogue .

run:
	docker run -it --net catalogue-network -p 8081:80 reemns97/catalogue 

apply:
	kubectl apply -f serviceAccount.yaml -f task.yaml -f clone.yaml -f deply-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test
