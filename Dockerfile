FROM alpine:edge

RUN apk upgrade --no-cache && apk add --no-cache \
    netcat-openbsd \
    && addgroup netcat \
    && adduser -G netcat -D netcat 

USER netcat

ENTRYPOINT [ "nc" ]
