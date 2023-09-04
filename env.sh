SUBMODULES=(
    VulkanSceneGraph
    vsgXchange
    vsgExamples
    vsgPoints
    vsgQt
    vsgTutorial
)

export BUILD_DIR="${HERE}/build"

export CMAKE_INSTALL_PREFIX=${HERE}
export CMAKE_MODULE_PATH=${CMAKE_INSTALL_PREFIX}/lib64/cmake

#export CMAKE_BUILD_TYPE=Release
export CMAKE_BUILD_TYPE=Debug

if [[ "${CMAKE_BUILD_TYPE}" = "Debug" ]]; then
    # -gdwarf-4 flag needed for totalview
    export CMAKE_CXX_FLAGS="-gdwarf-4"
fi
export CMAKE_GENERATOR=Ninja
