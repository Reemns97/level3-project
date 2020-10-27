build:
	docker build --tag reemns97/carts .

run:
	docker run -it --rm -p 8080:80 reemns97/carts

apply:
	kubectl apply -f serviceAccount.yaml -f task.yaml -f clone.yaml -f deply-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test
