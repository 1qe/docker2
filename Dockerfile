FROM ubuntu:18.04
COPY . /root/
WORKDIR /root/
RUN chmod +x sh.sh && ./sh.sh
