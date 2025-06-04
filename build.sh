#! /bin/bash

# need: uv ccache gcc make cmake
# usage (python 3.12): chmod +x ./build.sh && ./build.sh 3.12

export CC="ccache gcc"
export CXX="ccache g++"

uv venv -p $1
source .venv/bin/activate
mkdir build
cd build 
cmake ..
make -j10
cd ..
mv build build_py$1
