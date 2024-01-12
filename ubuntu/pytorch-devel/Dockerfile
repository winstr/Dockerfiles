FROM winstr/linux:ubuntu-tensorrt-devel
ENV DEBIAN_FRONTEND=noninteractive

RUN eval "$(pyenv init -)" && \
    pip3 install --upgrade pip && \
    pip3 install lit && \
    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
