### AnyKernel3 Ramdisk Mod Script
## Hades Exynos8895 EAS + OC for Samsung Galaxy Note8 (greatlte)

properties() { '
kernel.string=Hades Android 10 EAS + OC for greatlte
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=greatlte
device.name2=greatltexx
supported.versions=10
supported.patchlevels=
supported.vendorpatchlevels=
'; }

BLOCK=/dev/block/platform/11120000.ufs/by-name/BOOT;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

. tools/ak3-core.sh;

ui_print " " "Hades Android 10 EAS + OC" "Device: Samsung Galaxy Note8 (greatlte)" "Kernel: raw Image + dtb" " ";

# Preserve the installed ROM ramdisk and replace only the kernel and DTB.
split_boot;
flash_boot;

