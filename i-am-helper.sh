#!/usr/bin/bash
set -e

echo "Please enter your LanID to create K8s objects in your namespace:"
read LAN_ID

if [ -z "$LAN_ID" ]; then
	echo "Do not try to break me!!! Please enter your LAN ID"
	exit 1
fi

echo "Please enter your Docker image URI:"
read DOCKER_IMAGE_URI

if [ -z "$DOCKER_IMAGE_URI" ]; then
  echo "Do not try to break me!!! Please enter your docker image uri"
  exit 1
fi

LAN_ID_LOWER=$(echo $LAN_ID | tr "[:upper:]" "[:lower:]")
echo "Replacing all the k8s object files with $LAN_ID_LOWER as namespaces and image as $DOCKER_IMAGE_URI"
sed -i "s/REPLACEME/$LAN_ID_LOWER/g" k8s/*.yaml
sed -i "s/REPLACEME/$LAN_ID_LOWER/g" k8s/autoscaling/*.yaml
sed -i "s|REPLACEDOCKERIMAGE|$DOCKER_IMAGE_URI|g" k8s/deployment.yaml
sed -i "s|REPLACEDOCKERIMAGE|$DOCKER_IMAGE_URI|g" k8s/autoscaling/deployment.yaml
echo "Done"