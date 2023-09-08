FROM winstr/repo:ubuntu-trt-devel
ENV DEBIAN_FRONTEND=noninteractive

ENV PYENV_ROOT=/root/.pyenv
ENV PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN eval "$(pyenv init -)" && \
    pip3 install --upgrade pip && \
    pip3 install lit && \
    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

EXPOSE 6006 8888
