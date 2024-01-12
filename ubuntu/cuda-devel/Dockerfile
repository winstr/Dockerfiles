FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /workspace
WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    gcc g++ git zip vim curl make wget gnupg openssh-server \
    libgl1 libglib2.0-0 libpython3-dev libusb-1.0-0 \
    libbz2-dev libncurses5-dev libffi-dev libreadline-dev \
    libssl-dev

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

ENTRYPOINT service ssh restart && bash
