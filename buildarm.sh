#!/bin/bash


#PREFIX=$(pwd)/android/aarch64
PREFIX=$(pwd)/android/armeabi

# move to ~/.bashrc
#TOOLCHAIN=/home/hhl/WorkBin/my_android_toolchain
#export PATH=$PATH:$TOOLCHAIN/bin
#export CC="ccache arm-linux-androideabi-gcc"
#export CC=aarch64-linux-android-gcc
#export LD=aarch64-linux-android-ld
#export AR=aarch64-linux-android-ar

#./configure --list-decoders

./configure --prefix=$PREFIX \
	--enable-shared \
	--disable-static \
	--enable-cross-compile \
	--disable-doc \
	--cross-prefix=arm-linux-androideabi- \
	--arch=arm \
	--cpu=armv7-a\
	--target-os=android \
	--extra-cflags="-Os -Wall -fpic" 

#	--arch=aarch64 \
#	--cpu=armv8-a
#	--cross-prefix=aarch64-linux-android- \

#	--extra-ldflags=""
#	--disable-decoders \
#	--enable-decoder=h264 \
#	--enable-decoder=aac \
#	--disable-encoders \
#	--disable-muxers \
#	--disable-demuxers \
#	--enable-demuxer=aac \
#	--enable-demuxer=h264 \
#	--enable-demuxer=mpegvideo \
#	--enable-demuxer=ogg \
#	--enable-demuxer=m4v \
#	--disable-avfilter \
#	--disable-parsers \
#	--enable-parser=aac \
#	--enable-parser=aac_latm \
#	--enable-parser=h264 \
#	--disable-protocols \
#	--enable-protocol=file \
#	--disable-bsfs \
#	--disable-hwaccels \
#	--disable-avdevice \
#	--disable-devices \
#	--disable-doc \


