FROM alpine:latest

WORKDIR /

RUN apk update && apk add --no-cache \
    exiftool \
    curl \
  && rm -rf /var/cache/apk/*

COPY exiftoolsorter*.sh /usr/src/scripts/
RUN chmod +x /usr/src/scripts/exiftoolsorter*.sh

ENTRYPOINT ["/bin/sh"]
CMD ["-c", "exiftool $@ -"]
