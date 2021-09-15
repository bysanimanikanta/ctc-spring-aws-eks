#!/usr/bin/bash
set -e

echo "Please enter your LanID to create K8s objects in your namespace"
read LANID

if [ -z "$LANID" ]; then
	echo "Do not try to break me!!! Please enter your LAN ID"
	exit 1
fi

echo "Replacing all the k8s object files with $LANID as namespaces"
sed -i "s/REPLACEME/$LANID/g" k8s/*.yaml
