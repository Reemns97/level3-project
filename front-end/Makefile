build:
	docker build --tag reemns97/front-end .

run:
	docker run -itd --rm -p 8087:8079 reemns97/front-end

apply:
	kubectl apply -f serviceAccount.yaml -f build-push-tasks.yaml -f clone-task.yaml -f deploy-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test
