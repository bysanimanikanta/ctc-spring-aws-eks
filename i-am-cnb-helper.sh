#!/usr/bin/bash
set -e

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 112834256162.dkr.ecr.us-east-1.amazonaws.com
docker tag $LAN_ID/aws-spring-boot-eks:0.0.1-SNAPSHOT 112834256162.dkr.ecr.us-east-1.amazonaws.com/$LAN_ID/aws-spring-boot-eks:0.0.1-SNAPSHOT
docker push 112834256162.dkr.ecr.us-east-1.amazonaws.com/$LAN_ID/aws-spring-boot-eks:0.0.1-SNAPSHOT

echo "Successfully pushed docker image for the user with land id $LAN_ID to ECR"