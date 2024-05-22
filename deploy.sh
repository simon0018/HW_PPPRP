#!/bin/bash

# Build Flask application Docker image
docker build -t simon0018/flask-app -f Dockerfile_first .

# Build Script Docker image
docker build -t simon0018/fetch-script -f Dockerfile_second .

docker push simon0018/flask-app 
docker push simon0018/fetch-script
# Apply Kubernetes manifests
#kubectl apply -f flask-deployment.yaml
#kubectl apply -f script-deployment.yaml
