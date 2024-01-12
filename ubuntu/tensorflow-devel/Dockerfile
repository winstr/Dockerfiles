FROM winstr/linux:ubuntu-tensorrt-devel
ENV DEBIAN_FRONTEND=noninteractive

RUN eval "$(pyenv init -)" && \
    pip3 install --upgrade pip && \
    pip3 install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-2.13.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
