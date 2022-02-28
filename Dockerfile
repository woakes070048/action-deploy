FROM alpine:3.15

RUN apk add --no-cache bash curl unzip zip ca-certificates fuse openssh-client \
  && wget -qO- https://rclone.org/install.sh | bash

ADD bin /usr/local/bin

COPY filesystem /

ENTRYPOINT ["/entrypoint"]
