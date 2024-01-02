FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /workspace
WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    make \
    gcc \
    git \
    unzip \
    vim \
    wget \
    curl \
    xz-utils \
    libffi-dev \
    libglvnd-dev \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    liblzma-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libbz2-dev \
    libreadline-dev \
    libsm6 \
    libsqlite3-dev \
    libssl-dev \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxext6 \
    libxkbcommon-x11-0 \
    llvm \
    tk-dev \
    zlib1g-dev \
    ffmpeg

ENV PYENV_ROOT=/root/.pyenv
ENV PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
ENV PYTHON_VERSION=3.10.12
RUN curl https://pyenv.run | bash \
    && export PATH="$PYENV_ROOT/bin:$PATH" \
    && echo 'eval "$(pyenv init -)"' >> ~/.bashrc \
    && echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc \
    && . ~/.bashrc \
    && pyenv update \
    && pyenv install $PYTHON_VERSION \
    && pyenv global $PYTHON_VERSION

EXPOSE 6006 8888
