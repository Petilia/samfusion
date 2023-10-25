#!/bin/bash

yellow=`tput setaf 3`
reset_color=`tput sgr0`

ARCH="$(uname -m)"

main () {
    docker build . \
        --build-arg NUM_THREADS=${NUM_THREADS} \
        --build-arg UID=$(id -u) \
        --build-arg GID=$(id -g) \
        -t ${ARCH}/samfusion:latest
}


main "$@"; exit;

        # --build-arg HOST_USER_UID=`id -u` \
        # --build-arg HOST_USER_GID=`id -g` \