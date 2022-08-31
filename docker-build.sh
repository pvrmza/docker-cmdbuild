#!/bin/bash 

#
CMDBuild="3.3.2"
READY2USE="2.2"
IMAGE="pvrmza/cmdbuild"
TAG="r2u-$READY2USE-$CMDBuild"
#
URL="https://sourceforge.net/projects/cmdbuild/files/ready2use-$READY2USE/ready2use-$READY2USE-$CMDBuild-w.war/download"
rm -rf files/ready2use-w.war
wget $URL -O files/ready2use-w.war
#
docker build --rm -t $IMAGE:$TAG . 

docker login 
docker push $IMAGE:$TAG
