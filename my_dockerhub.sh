#!/usr/bin/env bash

# need permission
#docker login
# build images
#docker-compose -f quip-pathdb.yml build
#docker-compose -f caMicroscope.yml build
# tag and push images
docker tag quip_distro_imageloader:latest jrutecht/imageloader:latest
docker push jrutecht/imageloader:latest
docker tag quip_distro_heatmaploader:latest jrutecht/heatmaploader:latest
docker push jrutecht/heatmaploader:latest
docker tag quip_distro_segloader:latest jrutecht/segloader:latest
docker push jrutecht/segloader:latest
docker tag quip_distro_pathdb:latest jrutecht/pathdb:latest
docker push jrutecht/pathdb:latest
# iip, caracal, and slideloader are done on commit and tag
docker tag quip_distro_back:latest jrutecht/back:latest
docker push jrutecht/back:latest
docker tag camicroscope/iipimage:latest jrutecht/iip:latest
docker push jrutecht/iip:latest
