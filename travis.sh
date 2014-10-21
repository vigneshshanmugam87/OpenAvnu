#!/bin/bash
set -ev
make igb
make lib
make daemons_all
make examples_all
mkdir build
cd build
cmake .. -G "Unix Makefiles"
make
make test

