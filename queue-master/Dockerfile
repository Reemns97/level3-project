FROM  maven:3-jdk-8-slim 
RUN mkdir -p /queue-master
COPY . /queue-master
WORKDIR /queue-master
RUN mvn clean package

FROM java:openjdk-8-alpine
COPY --from=0 /queue-master/target/*.jar ./app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","./app.jar", "--port=80"]

