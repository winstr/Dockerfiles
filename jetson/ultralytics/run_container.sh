#!/bin/bash

NAME="jetson-ultralytics"
DIST="winstr/linux:$NAME"

docker run -it --runtime nvidia --network host \
    -v $HOME/workspace/docker/containers/$NAME:/root/workspace \
    --name $NAME $DIST \
    /bin/bash
