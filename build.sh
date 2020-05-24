mkdir out
make O=out clean
export ARCH="arm64"
export PATH="/usr/lib/ccache/bin:$PATH"
export CROSS_COMPILE="ccache ${HOME}/gcc4_arm64/bin/aarch64-linux-android-"
make O=out olive-perf_defconfig
make O=out -j$(nproc --all)
