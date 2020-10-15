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
I continued working on the other microservices and made sure that everything is working correctly. For now it seems that everything is working great.
## Day7:
I started with creating tekton tasks and pipelines for each microservices. I started with shipping and payment but i am facing the same issue in both. The build and push step dosnt work because of path problems. Today planing on solving the problem. 
