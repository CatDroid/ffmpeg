#!/bin/bash


PREFIX=$(pwd)/ubuntu

#./configure --list-decoders

./configure --prefix=$PREFIX \
	--enable-shared \
	--disable-static \
	--disable-doc \
	--target-os=linux\
	--enable-rpath \
	--extra-cflags="-Os -Wall -fpic" 

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


