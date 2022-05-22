FROM ubuntu

COPY bash.bashrc /etc/
COPY findme.txt /etc/
COPY suicide/ /tmp/
RUN  apt-get update \
  && apt-get install -y wget nano \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["bash"]
