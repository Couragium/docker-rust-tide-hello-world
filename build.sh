#!/usr/bin/env sh

DOCKERHUB_TAG="couragium/rust-tide-hello-world:latest"

set -ex

cd hello

cargo build --release

cd "$OLDPWD"

cp hello/target/release/hello ./app

docker build -t ${DOCKERHUB_TAG} .

docker push ${DOCKERHUB_TAG}
