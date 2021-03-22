#!/bin/bash

docker image build -t beacr.azurecr.io/cleanup-docker -t buildout.azurecr.io/cleanup-docker .
docker push beacr.azurecr.io/cleanup-docker
docker push buildout.azurecr.io/cleanup-docker
