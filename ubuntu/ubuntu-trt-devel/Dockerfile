FROM winstr/repo:ubuntu-cuda-devel
ENV DEBIAN_FRONTEND=noninteractive

# Install Tensor RT
# https://docs.nvidia.com/deeplearning/tensorrt/install-guide/index.html

ENV os="ubuntu2204"
ENV tag="8.6.1-cuda-11.8"
RUN wget https://developer.nvidia.com/downloads/compute/machine-learning/tensorrt/secure/8.6.1/local_repos/nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb && \
    dpkg -i nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb && \
    cp /var/nv-tensorrt-local-repo-${os}-${tag}/*-keyring.gpg /usr/share/keyrings/ && \
    apt-get update -y && apt-get install -y tensorrt && \
    rm -rf nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb
    
ENV PYENV_ROOT=/root/.pyenv
ENV PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN eval "$(pyenv init -)" && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade tensorrt

EXPOSE 6006 8888
