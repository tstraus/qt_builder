#!/bin/bash

# This script configures and builds qt

version=`cat VERSION`

mkdir -p build/qt-everywhere-src-${version}/build

pushd build/qt-everywhere-src-${version}/build &> /dev/null
    ../configure -prefix ../../dist -- -DBUILD_qtdoc=OFF -DFEATURE_clang=OFF -DFEATURE_clangcpp=OFF
    cmake --build . --parallel
    #cmake --install .
popd &> /dev/null

