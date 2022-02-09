#!/bin/bash

docker image build -t bettest.azurecr.io/cleanup-docker -t buildout.azurecr.io/cleanup-docker -t betprod.azurecr.io/cleanup-docker .
docker push bettest.azurecr.io/cleanup-docker
docker push betprod.azurecr.io/cleanup-docker
docker push buildout.azurecr.io/cleanup-docker
