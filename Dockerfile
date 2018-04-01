FROM ubuntu:bionic

RUN apt-get -yq update && \
    apt-get -yq install freeplane

RUN useradd -ms /bin/bash freeplane
USER freeplane
WORKDIR /home/freeplane

VOLUME [ "/home/freeplane/work" ]

ENTRYPOINT [ "freeplane" ]
