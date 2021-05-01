FROM ubuntu:18.04
COPY . /root/
WORKDIR /root/
RUN bash sh.sh
