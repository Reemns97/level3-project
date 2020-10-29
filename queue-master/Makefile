build:
	docker build --tag reemns97/queue-master .
run:
	docker run -it --rm -p 8086:80 reemns97/queue-master

apply:
	k apply -f serviceAccount.yaml -f build-push-tasks.yaml -f build-push-taskrun.yaml -f pipeline-resource.yaml -f deploy-task.yaml -f deploy-taskrun.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pipelinerun.yaml -n test
