#!/bin/bash

# 查看 https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu 获得更多编译脚本写法
# CompilationGuide 把所有的外部库都放在目录 $HOME/ffmpeg_build 下 lib/ include/  lib/pkgconfig 
# 这样就只需要:
# --extra-cflags="-I$HOME/ffmpeg_build/include" \
# --extra-ldflags="-L$HOME/ffmpeg_build/lib" \

#libx264 需要 enable-gpl
#opencore-amr 需要 --enable-version3    GPLv3

#./configure --list-decoders 查看支持的decoders

# PKG_CONFIG_PATH 多个路径之间需要用冒号 : 来分开

PREFIX=$(pwd)/ubuntu

X264_PATH=/home/hanlon/Cat6/git_qq_yun/x264/ubuntu/
AMR_PATH=/home/hanlon/Cat6/git_qq_yun/opencore-amr-0.1.4/ubuntu
OPUS_PATH=/home/hanlon/Cat6/git_qq_yun/opus/ubuntu

MY_CFLAGS="-I${X264_PATH}/include -I${AMR_PATH}/include -I${OPUS_PATH}/include"
MY_LDFLAGS="-L${X264_PATH}/lib -L${AMR_PATH}/lib -L${OPUS_PATH}/lib"
MY_CONFIG_PATH="${X264_PATH}/lib/pkgconfig:${AMR_PATH}/lib/pkgconfig:${OPUS_PATH}/lib/pkgconfig"

PKG_CONFIG_PATH=${MY_CONFIG_PATH} ./configure --prefix=$PREFIX \
	--enable-shared \
	--disable-static \
	--disable-doc \
	--target-os=linux\
	--enable-rpath \
	--extra-cflags="-Os -Wall -fpic ${MY_CFLAGS}" \
	--extra-ldflags="${MY_LDFLAGS}" \
	--enable-sdl \
	--enable-ffprobe \
 	--enable-ffplay \
 	--enable-libx264 \
	--enable-gpl \
	--enable-libopencore-amrnb \
	--enable-libopencore-amrwb \
	--enable-version3 \
	--enable-libopus

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


