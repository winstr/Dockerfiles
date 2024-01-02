#!/bin/bash
xhost +local:docker

NAME="ubuntu-cpu" # write the container name.
DIST="winstr/repo:ubuntu-cpu"

docker run -it \
    -p 6006:6006 -p 8888:8888 \
    --privileged --ipc=host \
    -v $HOME/Desktop/$NAME:/workspace \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e DISPLAY=$DISPLAY --name $NAME $DIST /bin/bash

