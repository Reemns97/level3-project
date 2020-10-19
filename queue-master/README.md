# queue-master
A microservices-demo service that provides reading from the shipping
queue. It will spawn new docker containers that simulate the shipping
process.

# build
Use `make build` 

# Run
Use `make run`

# Validate
`curl -s http://localhost:8086/health | jq`

