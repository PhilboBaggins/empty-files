FROM alpine:3.18.0

RUN apk add --no-cache make

ADD build-zero-file.sh /usr/local/bin/build-zero-file.sh

WORKDIR /home/dev/

ENTRYPOINT [ "/usr/local/bin/build-zero-file.sh" ]
