#!/bin/sh

VERSION=1
docker build -t fivpuupoldqschnjkm/phr_app:v$VERSION .
docker push fivpuupoldqschnjkm/phr_app:v1
sleep 20
kubectl apply -f manifest
