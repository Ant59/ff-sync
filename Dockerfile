FROM alpine:latest
MAINTAINER Antony Derham <antony@derham.me>

RUN apk add --update \
  build-base python python-dev git g++ py-pip sqlite \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

RUN git clone https://github.com/mozilla-services/syncserver \
  && cd /syncserver \
  && make build

EXPOSE 5000

VOLUME ["/ff-sync"]

CMD ["entrypoint.sh"]
