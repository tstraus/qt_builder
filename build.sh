#!/bin/bash

# This script configures and builds qt

pushd build/qt-src/build &> /dev/null
    # installs to system
    #../configure -prefix /usr/local -- -DBUILD_qtdoc=OFF -DFEATURE_clang=OFF -DFEATURE_clangcpp=OFF
    #cmake --build . --parallel
    #sudo cmake --install .

    # installs to build directory
    ../configure -prefix ../../dist -- -DBUILD_qtdoc=OFF -DFEATURE_clang=OFF -DFEATURE_clangcpp=OFF
    cmake --build . --parallel --target install
popd &> /dev/null

