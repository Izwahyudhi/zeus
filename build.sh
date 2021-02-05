#!/bin/bash

export KERNELNAME=Zeus

export LOCALVERSION=3x

export KBUILD_BUILD_USER=Izwahyudhi@#FUNProject

export KBUILD_BUILD_HOST=

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Lagi Diracik, ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam


done

END=$(date +"%s")
 
DIFF=$(( END - START ))
