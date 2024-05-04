FROM debian:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-setuptools \
    python3-venv \
    cmake \
    vim-nox \
    mono-complete \
    golang \
    nodejs \
    default-jdk \
    && apt-get clean

CMD ["/bin/bash"]