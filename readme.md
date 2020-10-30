# how to use the Capstone Project

## To build the K3D:
Use `make build`

## important changes
all the serviceAccount.yaml files need to be edited and your personal docker credentials needs to be added. (username and password)

## To run the project:
Prefarably you run each microservice seperatly using these commands:
`make shipping`
`make payment`
`make carts`
`make orders`
`make queue-master`
`make catalogue`
`make user`
`make front-end`
## note! 
better if you dont run all the commands after each other at the same time (give them time).
some of the pods may fail at first, so apply the command again if needed.
to run all the microservices at the same time use `make up` (might not work)

## To test the project
use `make test`

## To start elf and grafana monitoring
Use `make monitor` 

or use  `make elf` to run elf alone
or use `make grafana` to run pro-grafana alone 

