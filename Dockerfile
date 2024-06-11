FROM alpine:latest

WORKDIR /

RUN apk update && apk add --no-cache \
    exiftool \
    curl \
  && rm -rf /var/cache/apk/*

COPY exiftoolsorter*.sh /usr/src/scripts/

ENTRYPOINT ["/bin/sh"]
CMD ["-c", "exiftool $@ -"]
