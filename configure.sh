#!/bin/bash

# This script downloads and extracts the qt full source code

major_version='6.1'
minor_version='3'
version="${major_version}.${minor_version}"

echo 'building qt' $version
echo $version > VERSION

download_url="https://download.qt.io/official_releases/qt/${major_version}/${version}/single/qt-everywhere-src-${version}.tar.xz"

echo 'downloading' $download_url

mkdir -p build

pushd build &> /dev/null
    # download and extract qt source code
    curl -o ./qt.tar.xz -L $download_url
    tar -xf qt.tar.xz

    # rename so we don't need to know the version elsewhere and make build dir
    mv qt-everywhere-src-${version} qt-src
    mkdir qt-src/build
popd &> /dev/null

