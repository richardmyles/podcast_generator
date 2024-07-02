FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl
    python3.12.4 \
    python3-pip \
    git

RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
