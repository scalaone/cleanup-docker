#!/bin/bash

docker image build --no-cache --pull -t betcommon.azurecr.io/cleanup-docker .
docker push betcommon.azurecr.io/cleanup-docker
