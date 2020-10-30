.PHONY: carts catalogue orders user queue-master payment shipping front-end

up:
	 make carts && make catalogue && make orders && make user && make queue-master && make payment && make shipping && make front-end 

build:
	cd k8s-sandbox && make up && make install-cicd 

carts:
	kubectl apply -f carts/serviceAccount.yaml -f carts/pipeline-resource.yaml -f carts/build-push-tasks.yaml -f  carts/deploy-task.yaml -f  carts/build-push-taskrun.yaml -f  carts/deploy-taskrun.yaml -f carts/pipeline.yaml -n test
	kubectl create -f carts/pipelinerun.yaml -n test

catalogue:
	kubectl apply -f catalogue/serviceAccount.yaml -f catalogue/pipeline-resource.yaml -f catalogue/build-push-tasks.yaml -f  catalogue/deploy-task.yaml -f  catalogue/build-push-taskrun.yaml -f  catalogue/deploy-taskrun.yaml -f catalogue/pipeline.yaml -n test
	kubectl create -f catalogue/pipelinerun.yaml -n test


orders:
	kubectl apply -f orders/serviceAccount.yaml -f orders/pipeline-resource.yaml -f orders/build-push-tasks.yaml -f  orders/deploy-task.yaml -f  orders/build-push-taskrun.yaml -f  orders/deploy-taskrun.yaml -f orders/pipeline.yaml -n test
	kubectl create -f orders/pipelinerun.yaml -n test

user:
	kubectl apply -f user/serviceAccount.yaml -f user/pipeline-resource.yaml -f user/build-push-tasks.yaml -f  user/deploy-task.yaml -f  user/build-push-taskrun.yaml -f  user/deploy-taskrun.yaml -f user/pipeline.yaml -n test
	kubectl create -f user/pipelinerun.yaml -n test

queue-master:
	kubectl apply -f queue-master/serviceAccount.yaml -f queue-master/pipeline-resource.yaml -f queue-master/build-push-tasks.yaml -f  queue-master/deploy-task.yaml -f  queue-master/build-push-taskrun.yaml -f  queue-master/deploy-taskrun.yaml -f queue-master/pipeline.yaml -n test
	kubectl create -f queue-master/pipelinerun.yaml -n test

payment:	
	kubectl apply -f payment/serviceAccount.yaml -f payment/pipeline-resource.yaml -f payment/build-push-tasks.yaml -f  payment/deploy-task.yaml -f  payment/build-push-taskrun.yaml -f  payment/deploy-taskrun.yaml -f payment/pipeline.yaml -n test
	kubectl create -f payment/pipelinerun.yaml -n test

shipping:		
	kubectl apply -f shipping/serviceAccount.yaml -f shipping/pipeline-resource.yaml -f shipping/build-push-tasks.yaml -f  shipping/deploy-task.yaml -f  shipping/build-push-taskrun.yaml -f  shipping/deploy-taskrun.yaml -f shipping/pipeline.yaml -n test
	kubectl create -f shipping/pipelinerun.yaml -n test

front-end: 
	kubectl apply -f front-end/serviceAccount.yaml -f front-end/pipeline-resource.yaml -f front-end/build-push-tasks.yaml -f  front-end/deploy-task.yaml -f  front-end/build-push-taskrun.yaml -f  front-end/deploy-taskrun.yaml -f front-end/pipeline.yaml -n test
	kubectl create -f front-end/pipelinerun.yaml -n test

test:
	kubectl apply -f  e2e-test-js/serviceAccount.yaml -f e2e-test-js/pipeline-resource.yaml -f e2e-test-js/build-push-task.yaml -f e2e-test-js/run-test-task.yaml -f e2e-test-js/build-push-taskrun.yaml -f e2e-test-js/run-test-taskrun.yaml -n test
