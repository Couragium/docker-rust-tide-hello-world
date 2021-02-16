FROM debian:stable-slim

ARG LISTEN_PORT=80

ENV LISTEN_PORT ${LISTEN_PORT}

ADD app /app

ENTRYPOINT ["/app"]
