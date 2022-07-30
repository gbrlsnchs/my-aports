FROM docker.io/alpine:edge
ADD https://gitlab.alpinelinux.org/alpine/aports/-/raw/master/scripts/bootstrap.sh /usr/local/bin/
RUN apk update && \
    apk add alpine-sdk atools && \
    chmod u+x /usr/local/bin/bootstrap.sh
ENTRYPOINT []
