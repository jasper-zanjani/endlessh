FROM ubuntu:latest
RUN apt update && apt install endlessh -y
WORKDIR /etc/endlessh
COPY config ./
CMD endlessh -v > /var/log/endlessh.log
