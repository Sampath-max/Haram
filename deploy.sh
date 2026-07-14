#!/bin/bash

if [ docker --version &> /dev/null ]
then
    echo "Docker is not installed."
    exit 1
fi

echo "Building Docker image..."

docker build -t nginx .

echo "Removing old container..."

docker rm -f $(docker ps -aq)

echo "Running new container..."

docker run -d --name con4 -p 80:8080 nginx2

echo "Deployment completed."
