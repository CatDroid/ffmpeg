#!/bin/bash

# 查看 https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu 获得更多编译脚本写法
# CompilationGuide 把所有的外部库都放在目录 $HOME/ffmpeg_build 下 lib/ include/  lib/pkgconfig 

#./configure --list-decoders 查看支持的decoders

PREFIX=$(pwd)/ubuntu

X264_PATH=/home/hanlon/Cat6/git_qq_yun/x264/ubuntu/


PKG_CONFIG_PATH="${X264_PATH}/lib/pkgconfig" ./configure --prefix=$PREFIX \
	--enable-shared \
	--disable-static \
	--disable-doc \
	--target-os=linux\
	--enable-rpath \
	--extra-cflags="-Os -Wall -fpic -I${X264_PATH}/include" \
	--extra-ldflags="-L${X264_PATH}/lib" \
	--enable-sdl \
	--enable-ffprobe \
 	--enable-ffplay \
 	--enable-libx264 \
	--enable-gpl 
	 
	


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


