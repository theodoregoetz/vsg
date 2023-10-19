#!/bin/bash

HERE="$(realpath "$( dirname -- "${BASH_SOURCE[0]}" )" )"
source ${HERE}/env.sh

if [[ $# -gt 0 ]]; then
    SUBMODULES=("$1")
fi

for SUBMODULE in "${SUBMODULES[@]}"
do
    echo "configuring $SUBMODULE"
    rm -fr $BUILD_DIR/$SUBMODULE
    if [[ "$SUBMODULE" == "vsgXchange" ]]; then
        CMAKE_OPTS="-DvsgXchange_assimp=FALSE"
    elif [[ "$SUBMODULE" == "vsgExamples" ]]; then
        CMAKE_CXX_FLAGS="$CMAKE_CXX_FLAGS -DvsgXchange_all"
    fi
    cmake -B ${BUILD_DIR}/$SUBMODULE -S ${HERE}/$SUBMODULE -DCMAKE_CXX_FLAGS="$CMAKE_CXX_FLAGS" "${CMAKE_OPTS[@]}" -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX"
done
