#!/bin/sh

DIRS='src test/test-runners test/data test/tmp doc tmp'
FILES='test/data/input.iout test/data/input.out test/data/layout_only.iout test/data/data_only.out'

rm -rf $DIRS \
    && mkdir -p $DIRS \
    && touch $FILES \
    && notangle -Rmakefile -t4 program.nw > makefile \
    && make clean \
    && make
