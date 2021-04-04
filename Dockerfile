FROM ubuntu:18.04
COPY . /home/
WORKDIR /home/
RUN chmod +x sh.sh && ./sh.sh
