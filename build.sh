#!/usr/bin/sudo /bin/sh

export ARCH=arm
export CROSS_COMPILE=armv5tel-softfloat-linux-gnueabi-
export KLIB_BUILD=/cimc/build/ravion-kernel
export KLIB=/cimc/exportfs/colibri

if [ -z "$*" ]; then
    make defconfig-colibri
    make -j3 install
else
    make -j3 ${DEF_ARGS} $*
fi
