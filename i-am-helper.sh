#!/usr/bin/bash
set -e

echo "Please enter your LanID to create K8s objects in your namespace:"
read LAN_ID

if [ -z "$LAN_ID" ]; then
	echo "Do not try to break me!!! Please enter your LAN ID"
	exit 1
fi

echo "Replacing all the k8s object files with $LAN_ID as namespaces"
sed -i "s/REPLACEME/$LAN_ID/g" k8s/*.yaml
echo "Done"

echo "Please enter your docker image URL:"
read DOCKER_IMAGE_URL

if [ -z "$DOCKER_IMAGE_URL" ]; then
	echo "Do not try to break me!!! Please enter your docker image URL"
	exit 1
fi

echo "Replacing docker image URL in deployment.yaml"
sed -i "s/REPLACEDOCKERIMAGE/$DOCKER_IMAGE_URL/g" k8s/deployment.yaml
echo "Done"