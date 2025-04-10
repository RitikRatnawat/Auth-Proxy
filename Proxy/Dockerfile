FROM golang:1.24.2-alpine AS builder

WORKDIR /app

ENV CGO_ENABLED=0

RUN go install github.com/oauth2-proxy/oauth2-proxy/v7@latest
RUN mkdir -p -m 770 proxy
RUN cp /root/go/bin/oauth2-proxy /app/proxy


FROM ubuntu:25.04 as base

LABEL app-name="auth-proxy"

WORKDIR /app

RUN mkdir -p -m 770 proxy
COPY --from=builder /app/proxy/* /app/proxy
COPY ./config/proxy.cfg /app/proxy.cfg

ENTRYPOINT [ "./proxy/oauth2-proxy" ]

CMD [ "--config=./proxy.cfg" ]