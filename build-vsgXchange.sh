#!/bin/bash

HERE="$(realpath "$( dirname -- "${BASH_SOURCE[0]}" )" )"
source ${HERE}/env.sh

rm -fr $BUILD_DIR
cmake -B ${BUILD_DIR}/vsgXchange -S ${TOPDIR}/vsgXchange -DCMAKE_CXX_FLAGS="$CMAKE_CXX_FLAGS" -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX"
cmake --build ${BUILD_DIR}/vsgXchange --target install
