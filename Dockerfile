FROM alpine:3.20

RUN apk add --update \
    python3 \
    py3-pip \
    openjdk8-jre \
  && pip install --break-system-packages --upgrade launchable~=1.0 \
  && rm -rf /var/cache/apk/*
