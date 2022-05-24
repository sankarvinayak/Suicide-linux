FROM alpine

COPY findme.txt /etc/
COPY suicide/ /tmp/
RUN  apk update \
  && apk add ca-certificates wget nano bash \
  && update-ca-certificates 

COPY bashrc /etc/bash
ENTRYPOINT ["bash"]
