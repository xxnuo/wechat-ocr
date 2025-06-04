#! /bin/bash

# need: uv ccache gcc make cmake

export CC="ccache gcc"
export CXX="ccache g++"

uv venv -p 3.12
source .venv/bin/activate
mkdir build
cd build 
cmake ..
make -j10
cd ..
mv build build_py3.12

uv venv -p 3.10
source .venv/bin/activate
mkdir build
cd build 
cmake ..
make -j10
mv build build_py3.10
