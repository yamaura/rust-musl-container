= rust-musl-container =

This repository was created inspired by `rust-musl-builder`.

This container is using the Rust Alpine image as a base and have made it possible to statically link with OpenSSL.
With the command below, you can create binaries under the 'target/' directory:
```
$ docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp ghcr.io/yamaura/rust-musl-container cargo build --release
```
