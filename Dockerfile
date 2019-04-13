FROM debian:stable

ARG uid=$uid
ARG user=$user

RUN apt-get update && apt-get install -y git build-essential
RUN useradd -u $uid $user
USER $user
RUN git clone https://github.com/9fans/plan9port.git /tmp/plan9port
WORKDIR /tmp/plan9port
RUN ./INSTALL
