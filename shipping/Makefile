build:
	docker build --tag reemns97/shipping .

run:
	docker run -it --rm -p 8085:80 reemns97/shipping -d 

apply:
	kubectl apply -f serviceAccount.yaml -f build-push-tasks.yaml -f clone-task.yaml -f deploy-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test 
