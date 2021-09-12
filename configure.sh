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
    curl -o ./qt.tar.xz -L $download_url
    tar -xf qt.tar.xz
popd &> /dev/null

