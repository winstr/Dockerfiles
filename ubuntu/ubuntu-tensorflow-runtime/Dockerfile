FROM winstr/repo:ubuntu-trt-runtime
ENV DEBIAN_FRONTEND=noninteractive

ENV PYENV_ROOT=/root/.pyenv
ENV PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN eval "$(pyenv init -)" && \
    pip3 install --upgrade pip && \
    pip3 install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-2.13.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

EXPOSE 6006 8888
