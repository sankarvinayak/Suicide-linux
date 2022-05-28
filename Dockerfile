FROM alpine

COPY findme.txt /etc/

COPY suicide/ /tmp/
RUN  apk update \
  && apk add nano bash 
RUN  touch /tmp/output.txt&&chown root /tmp/output.txt
COPY bashrc /etc/bash
ENTRYPOINT ["bash"]
