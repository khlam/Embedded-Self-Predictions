FROM ubuntu:20.04
WORKDIR /app
COPY . /app
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-pip unzip libglu1-mesa-dev libgl1-mesa-dev libosmesa6-dev xvfb patchelf ffmpeg cmake swig zlib1g-dev make gcc g++ xvfb python3-mpi4py
RUN pip3 install -r requirements.txt
RUN xvfb-run -s "-screen 0 1400x900x24" bash
