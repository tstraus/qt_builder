@echo off

cd build\qt-src\build

rem sources VS environment
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64

rem installs to build directory
../configure.bat -prefix ../../dist -- -DBUILD_qtdoc=OFF -DFEATURE_clang=OFF -DFEATURE_clangcpp=OFF

cmake --build . --parallel --target install

