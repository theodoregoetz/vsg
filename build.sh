#!/bin/bash

HERE="$(realpath "$( dirname -- "${BASH_SOURCE[0]}" )" )"
source ${HERE}/env.sh

if [[ $# -gt 0 ]]; then
    SUBMODULES=("$1")
fi

for SUBMODULE in "${SUBMODULES[@]}"
do
    echo "building $SUBMODULE"
    cmake --build ${BUILD_DIR}/$SUBMODULE
    cmake --build ${BUILD_DIR}/$SUBMODULE --target install
done
