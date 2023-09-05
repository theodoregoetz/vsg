#!/bin/bash

HERE="$(realpath "$( dirname -- "${BASH_SOURCE[0]}" )" )"
source ${HERE}/env.sh

if [[ $# -gt 1 ]]; then
    SUBMODULES="$1"
fi

for SUBMODULE in "${SUBMODULES[@]}"
do
    echo "configuring $SUBMODULE"
    rm -fr $BUILD_DIR/$SUBMODULE
    cmake -B ${BUILD_DIR}/$SUBMODULE -S ${HERE}/$SUBMODULE -DCMAKE_CXX_FLAGS="$CMAKE_CXX_FLAGS" -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX"
done
