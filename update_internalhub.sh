#!/usr/bin/env bash

# need permission
docker login -u $(oc whoami) -p $(oc whoami -t) https://docker-registry-default.apps.dbmi.cloud
# build images
docker-compose -f quip-pathdb.yml build
docker-compose -f caMicroscope.yml build
# tag and push images
docker tag quip_distro_imageloader:latest docker-registry-default.apps.dbmi.cloud/pathdb/imageloader:latest
docker push docker-registry-default.apps.dbmi.cloud/pathdb/imageloader:latest
docker tag quip_distro_heatmaploader:latest docker-registry-default.apps.dbmi.cloud/pathdb/heatmaploader:latest
docker push docker-registry-default.apps.dbmi.cloud/pathdb/heatmaploader:latest
docker tag quip_distro_segloader:latest docker-registry-default.apps.dbmi.cloud/pathdb/segloader:latest
docker push docker-registry-default.apps.dbmi.cloud/pathdb/segloader:latest
docker tag quip_distro_pathdb:latest docker-registry-default.apps.dbmi.cloud/pathdb/pathdb:latest
docker push docker-registry-default.apps.dbmi.cloud/pathdb/pathdb:latest
# iip, caracal, and slideloader are done on commit and tag
docker tag quip_distro_back:latest docker-registry-default.apps.dbmi.cloud/pathdb/back:latest
docker push docker-registry-default.apps.dbmi.cloud/pathdb/back:latest
docker tag camicroscope/iipimage:latest docker-registry-default.apps.dbmi.cloud/pathdb/iip:latest
docker push docker-registry-default.apps.dbmi.cloud/pathdb/iip:latest
