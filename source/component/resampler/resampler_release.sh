#!/bin/sh

make CFG_HI_TOOLCHAINS_NAME=$1 -f Makefile.pack

make clean -f Makefile.pack