FROM debian:bullseye

RUN apt-get update && \
    apt-get -y install git \
    procps \
    python3-dev \
    python3-pip \
    curl \
    vim \
    libgdal-dev \
    gdal-bin

RUN pip install --upgrade pip setuptools

WORKDIR /app
ADD . /app

RUN pip install -r /app/requirements-dev.txt
RUN pip install GDAL
RUN pip install .