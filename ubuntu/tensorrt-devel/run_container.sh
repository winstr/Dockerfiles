#!/bin/bash

IMGNAME=ubuntu-tensorrt-devel
DSTREPO=winstr/linux:$IMGNAME
WORKDIR=$HOME/workspace/docker/containers

docker run -it --gpus all --network host \
    -v $WORKDIR/$IMGNAME:/workspace \
    --name $IMGNAME $DSTREPO \
    /bin/bash

