FROM nvcr.io/nvidia/l4t-pytorch:r35.2.1-pth2.0-py3
ENV DEBIAN_FRONTEND=noninteractive

ADD https://ultralytics.com/assets/Arial.ttf https://ultralytics.com/assets/Arial.Unicode.ttf /root/.config/Ultralytics/
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    git \
    zip \
    vim \
    curl \
    htop \
    libgl1 \
    libglib2.0-0 \
    libpython3-dev \
    gnupg \
    g++ \
    libusb-1.0-0 \
    openssh-server \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev

WORKDIR /usr/src/ultralytics

RUN git clone https://github.com/ultralytics/ultralytics -b main /usr/src/ultralytics
ADD https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8n.pt /usr/src/ultralytics/
RUN grep -v "opencv-python" pyproject.toml > temp.toml && mv temp.toml pyproject.toml

RUN python3 -m pip install --upgrade pip wheel
RUN pip install --no-cache tqdm matplotlib pyyaml psutil pandas onnx "numpy==1.23"
RUN pip install --no-cache -e .

ENV OMP_NUM_THREADS=1

WORKDIR /root/workspace
ENTRYPOINT service ssh restart && bash
