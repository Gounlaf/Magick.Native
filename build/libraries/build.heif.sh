#!/bin/bash
set -e

cd heif

mkdir __build
cd __build
$CMAKE_COMMAND .. -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_SHARED_LIBS=off -DCMAKE_BUILD_TYPE=$CMAKE_BUILD_TYPE -DWITH_EXAMPLES=0 -DCMAKE_C_FLAGS="$FLAGS"
$MAKE install
