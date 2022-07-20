#!/bin/bash

docker image build -t betint.azurecr.io/cleanup-docker -t betprod.azurecr.io/cleanup-docker .
docker push betint.azurecr.io/cleanup-docker
docker push betprod.azurecr.io/cleanup-docker
