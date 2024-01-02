FROM winstr/repo:ubuntu-cuda-runtime
ENV DEBIAN_FRONTEND=noninteractive

# Install Tensor RT
# https://docs.nvidia.com/deeplearning/tensorrt/install-guide/index.html

ENV os="ubuntu2204"
ENV tag="8.6.1-cuda-11.8"
RUN wget https://developer.nvidia.com/downloads/compute/machine-learning/tensorrt/secure/8.6.1/local_repos/nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb
RUN dpkg -i nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb
RUN cp /var/nv-tensorrt-local-repo-${os}-${tag}/*-keyring.gpg /usr/share/keyrings/
RUN apt-get update -y
RUN apt-get install -y --allow-change-held-packages libcudnn8=8.9.4.25-1+cuda12.2
RUN apt-get install -y tensorrt
RUN rm -rf nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb
    
ENV PYENV_ROOT=/root/.pyenv
ENV PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN eval "$(pyenv init -)" && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade tensorrt

EXPOSE 6006 8888
