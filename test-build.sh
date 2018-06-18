#!/usr/bin/env bash
#
# Inspired from https://github.com/nodejs/docker-node/blob/master/test-build.sh
#
# Run a test build for all images.

set -euo pipefail

info() {
    printf "%s\\n" "$@"
}

fatal() {
  printf "**********\\n"
  printf "Fatal Error: %s\\n" "$@"
  printf "**********\\n"
  exit 1
}

image_type="$1"
shift
tag="$1"
shift

function build() {

    local image_type
    local tag

    image_type=$1
    shift
    tag=$1
    shift

    info "Building ${image_type}:${tag}..."

    if ! docker build --cpuset-cpus="0,1" -t infernalmedia/${image_type}:"${tag}" ${image_type}/${tag}; then
        fatal "Build of ${tag} failed!"
    fi
    info "Build of ${tag} succeeded."

}

if [ -f ${image_type}/${tag}/Dockerfile ]; then
    build "${image_type}" "${tag}"
fi

info "Build successful!"

exit 0
