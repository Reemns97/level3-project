build:
	docker build --tag reemns97/carts .

run:
	docker run -it --rm -p 8080:80 reemns97/carts

apply:
	kubectl apply -f serviceAccount.yaml -f pipeline-resource.yaml -f build-push-tasks.yaml -f deploy-task.yaml -f taskrun.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pipelinerun.yaml -n test
