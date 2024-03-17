#!/bin/zsh


./mvnw package

# Then, build the image with:
docker build -f src/main/docker/Dockerfile.jvm -t quarkus/rmatteitire-jvm .

# Then run the container using:
docker run -i --rm -p 8080:8080 quarkus/rmatteitire-jvm --rm -p 8080:8080 quarkus/rmatteitire-jvmx

export JAVA_DEBUG=true

EXPOSE 8080 5005 22

