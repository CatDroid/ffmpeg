#!/bin/bash

TOOLCHAIN=/home/hhl/WorkBin/my_android_toolchain
PREFIX=$(pwd)/android/aarch64

export PATH=$PATH:$TOOLCHAIN/bin
#export CC="ccache arm-linux-androideabi-gcc"
export CC=aarch64-linux-android-gcc
export LD=aarch64-linux-android-ld
export AR=aarch64-linux-android-ar


./configure \
    --prefix=$PREFIX \
    --enable-shared \
    --disable-static \
    --extra-cflags="-Os -fpic -mfloat-abi=hard -mfpu=vfp" \
    --extra-ldflags=""


