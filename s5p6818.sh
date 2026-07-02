#!/bin/sh

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- distclean
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- nanopi3_linux_defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
#make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- all  -j2
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image kvm-arm.mode=nvhe -j2
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- dtbs

#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm64/gcc-linaro-12.1.1-2022.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- distclean
#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm64/gcc-linaro-12.1.1-2022.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- nanopi3_linux_defconfig
#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm64/gcc-linaro-12.1.1-2022.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- nanopim3_defconfig
#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm64/gcc-linaro-12.1.1-2022.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- menuconfig
#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm/gcc-linaro-6.4.1-2017.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- all -j2
#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm64/gcc-linaro-12.1.1-2022.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- Image -j8
#make ARCH=arm64 CROSS_COMPILE=/usr/local/arm64/gcc-linaro-12.1.1-2022.08-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- dtbs
