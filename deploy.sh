#!/usr/bin/env bash

#setting up the environment
echo "Deploying to production..."
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 654654540441.dkr.ecr.ap-south-1.amazonaws.com

# #Creating and uploading the image
docker build -t 654654540441.dkr.ecr.ap-south-1.amazonaws.com/node-app-test:latest .
docker push 654654540441.dkr.ecr.ap-south-1.amazonaws.com/node-app-test:latest

# #Cleanup

docker image rm 654654540441.dkr.ecr.ap-south-1.amazonaws.com/node-app-test:latest
