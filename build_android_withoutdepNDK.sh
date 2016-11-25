#!/bin/bash  
NDK=/home/hhl/WorkBin/android-ndk-r12b
SYSROOT=$NDK/platforms/android-21/arch-arm/  
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64  
  
function build_one  
{  
./configure \
    --prefix=$PREFIX \
    --enable-shared \
    --disable-static \
    --disable-doc \
    --disable-ffserver \
    --enable-cross-compile \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --target-os=android \
    --arch=arm \
    --sysroot=$SYSROOT \
    --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
    --extra-ldflags="$ADDI_LDFLAGS" \
    $ADDITIONAL_CONFIGURE_FLAG
}  
#CPU=arm  
PREFIX=$(pwd)/android/withoutdepndk  
ADDI_CFLAGS="-marm"  
build_one
