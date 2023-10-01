FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime AS builder    

COPY . .
RUN apt update -y && apt upgrade -y 
RUN apt install -y git python3 python3-pip
RUN pip3 install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/pytorch/PiPPy.git \
    && cd PiPPy \
    && python3 setup.py install \
    && cd ..
WORKDIR /app


CMD ["/bin/bash"]