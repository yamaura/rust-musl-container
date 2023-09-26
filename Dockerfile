FROM rust:1.72.1-alpine

WORKDIR /usr/src
RUN mkdir -p /.cargo
COPY cargo-config.toml /.cargo/config.toml
RUN apk update && \
  apk add --no-cache \
  musl-dev \
  openssl \
  openssl-dev \
  openssl-libs-static \
  git
