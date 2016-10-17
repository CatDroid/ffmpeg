#!/bin/bash

PREFIX=$(pwd)/android/aarch64

aarch64-linux-android-ld -soname libffmpeg.so -shared --whole-archive \
		-o $PREFIX/libffmpeg.so \
			libavcodec/libavcodec.a \
			libavfilter/libavfilter.a \
			libswresample/libswresample.a \
			libavformat/libavformat.a \
			libavutil/libavutil.a \
			libswscale/libswscale.a 

# $PREFIX/lib/libavcodec.a			
# libavdevice.a 