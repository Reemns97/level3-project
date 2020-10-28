build:
	docker build --tag reemns97/payment .

run:
	docker run -it --rm -p 8083:80 reemns97/payment 

apply:
	kubectl apply -f serviceAccount.yaml -f build-push-tasks.yaml -f clone-task.yaml -f deploy-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test 
