FROM ubuntu:latest

ADD entrypoint.sh /opt/entrypoint.sh

RUN apt install build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh

ENTRYPOINT ["sh", "/opt/entrypoint.sh"]
