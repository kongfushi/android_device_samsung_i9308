#for some reason,currently kernel must build seprately
ARGS="-C kernel/samsung/smdk4412 ARCH=arm CROSS_COMPILE=$(pwd)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-"
mka $ARGS VARIANT_DEFCONFIG= SELINUX_DEFCONFIG= cyanogenmod_i9308_defconfig
mka $ARGS zImage
mka $ARGS dtbs
mka $ARGS modules
mka $ARGS INSTALL_MOD_PATH=$(pwd)/out/target/product/i9308/system modules_install

cp kernel/samsung/smdk4412/arch/arm/boot/zImage vendor/samsung/i9308/proprietary/zImage
dest_dir=$(pwd)/vendor/samsung/i9308/proprietary/system/lib/modules/
for f in $(find kernel/samsung/smdk4412 -name *.ko); do
    echo copy $f to $dest_dir
    cp $f $dest_dir
done



