#!/usr/bin/sudo /bin/sh

export ARCH=arm
export CROSS_COMPILE=arm-fsl-linux-gnueabi-
export KLIB_BUILD=/cimc/build/ravion-kernel
export KLIB=./../imx51kernel.output

if [ -z "$*" ]; then
    make defconfig-imx51
    make -j3 install
else
    make -j3 ${DEF_ARGS} $*
fi
