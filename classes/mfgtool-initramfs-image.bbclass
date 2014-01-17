DEPENDS += "u-boot-mfgtool linux-mfgtool"

PACKAGE_GROUP_mtd = "packagegroup-fsl-mfgtool-mtd"
PACKAGE_GROUP_extfs = "packagegroup-fsl-mfgtool-extfs"

IMAGE_FSTYPES = "cpio.gz.u-boot"
IMAGE_ROOTFS_SIZE ?= "8192"
IMAGE_CLASSES = "image_types_uboot"

IMAGE_FEATURES = " \
    mtd \
    extfs \
    read-only-rootfs \
"

# Avoid installation of syslog
BAD_RECOMMENDATIONS += "busybox-syslog"

# Avoid static /dev
USE_DEVFS = "1"

inherit core-image

CORE_IMAGE_BASE_INSTALL = " \
    ${CORE_IMAGE_EXTRA_INSTALL} \
"
