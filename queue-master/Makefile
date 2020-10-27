build:
	docker build --tag reemns97/queue-master .
run:
	docker run -it --rm -p 8086:80 reemns97/queue-master

apply:
	kubectl apply -f serviceAccount.yaml -f task.yaml -f clone.yaml -f deply-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test
