FROM alpine:latest

ADD entrypoint.sh /opt/entrypoint.sh

RUN apt update

RUN apt install -y unzip ca-certificates curl \
 && chmod +x /opt/entrypoint.sh

ENTRYPOINT ["sh", "/opt/entrypoint.sh"]
