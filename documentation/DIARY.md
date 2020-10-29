# This is my daily progress notes
## Day1:
I read and understood the requirments of the project. 
## Day2: 
I cloned the sock-shop microservices and copied them to this rep. Tested the microservices-demo using docker-compose to understand how it works.
## Day3:
I started working with the dockerfiles, tried doing mutlistage dockerfile for the shipping microservices. I failed the first time cause i was adding all the dockfiles toghther realizing thats not how it works ;), so i went and read more about how can i build mutlisatge dockerfiles correctly.  
## Day4:
I finally created the muiltisatge dockerfile for the shipping microservices with the help of Mr.bryan. I tested the build and it works! 
## Day5: 
I tried doing dockerfiles for the other services, i manged to do the payment, catalogue, orders and carts. For the carts it kept failing and i asked for help from one of my colleagues and turns out i need to update the source code and change the version of the maven-jdk.
## Day6:
I finished working on the dockerfiles for the other microservices and made sure that everything is working correctly. For now it seems that everything is working great.
## Day7:
I started with creating tekton tasks and pipelines for each microservices. I started with shipping and payment but i am facing the same issue in both. The build and push step dosnt work because of path problems.
## Day8:
I fixed the problem with the path and used input resources to solve it. For now i have created task, taskrun and pipline resource files for the shipping, payment and fornt-end. 
## Day9:
i finished creating the rest of the tekton files today. 
## Day10: 
going back a step because i realized that i should've created deployment files first so i can deploy them. i have created deployment and service files for each microservice with its database. HOWEVER, queue-master, catalogue, catalogue-db and user are not working :) dont know why yet.
## Day11:
turns out that the problems of yeterday were because of the dockerfiles. so today i fixed the dockerfiles and finally i saw the app working on my browser by applying the kubectl command manually "just for testin".
## Day12:
Today i tried deploying the microservices using tekton and after my research i decided that i'm changing the way i doing tekton. Instead of using task, taskrun and resource, i'll be using 3 tasks (1 that clones the repo, one that builds and push, and one that deploys the app), 1 pipeline and 1 piplinerun.
## Day13:
I have created the service account, secret, role and rolebinding for each microservice. in additon i started working on the tekton files and so far i've finished the shipping, payment and front-end sucessfuly.
## Day14:
chnage of plans :) putting back the taskrun and pipeline resource from before because the microservice that has databases didnt work with the only pipeline and pipelinerun. so i'll be doing 2 tasks, 2 taskruns and 1 pipeline resource, 1 pipeline and 1 pipelinerun.
## Day15:

## Day16:
