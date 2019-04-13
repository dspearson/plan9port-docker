FROM debian:stable

RUN apt-get update && apt-get install -y git build-essential

# VOLUME . /target
#VOLUME . /host
#WORKDIR /host
RUN git clone https://github.com/9fans/plan9port.git /plan9port
WORKDIR /plan9port
RUN ./INSTALL

#COPY ./bin /target
