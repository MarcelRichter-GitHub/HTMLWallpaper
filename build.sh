#!/bin/bash
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=~/.local ..
make
make install
