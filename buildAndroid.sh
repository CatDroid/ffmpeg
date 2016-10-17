#!/bin/bash


PREFIX=$(pwd)/android/aarch64

# move to ~/.bashrc
#TOOLCHAIN=/home/hhl/WorkBin/my_android_toolchain
#export PATH=$PATH:$TOOLCHAIN/bin
#export CC="ccache arm-linux-androideabi-gcc"
#export CC=aarch64-linux-android-gcc
#export LD=aarch64-linux-android-ld
#export AR=aarch64-linux-android-ar


./configure --prefix=$PREFIX \
	--enable-shared \
	--disable-static \
	--enable-cross-compile \
	--cross-prefix=aarch64-linux-android- \
	--target-os=android \
	--disable-avfilter \
	--disable-encoders \
	--disable-avdevice \
	--disable-doc \
	--disable-muxers \
	--disable-filters \
	--disable-devices \
	--arch=aarch64 \
	--extra-cflags="-O3 -Wall -fpic" 
#	--extra-ldflags=""

