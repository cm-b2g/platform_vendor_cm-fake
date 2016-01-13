# for Gecko to boot to recovery
# Ensure your fstab has a /persist partition
export USE_SET_METADATA := true
ENABLE_LIBRECOVERY := true

# for Gecko to support internal storage
# if you have internal sdcard partition
# add to your device specific config
ifneq ($(GECKO_BOARD_SEPARATE_STORAGE_PARTITON),true)
RECOVERY_EXTERNAL_STORAGE := /data/media/0
PRODUCT_COPY_FILES += \
    vendor/cm/volume.cfg:system/etc/volume.cfg
endif

# For Gecko to support QCOM bluetooth extensions
BOARD_BLUETOOTH_BDROID_USE_CAF_EXTENSIONS := true

# for Gecko to support physical buttons
PRODUCT_COPY_FILES += \
    vendor/cm/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Disable SELinux (b2g currently does not support SELinux)
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Automatically enable b2g specific kernel features
TARGET_KERNEL_B2G_CONFIG := vendor/cm/b2g_defconfig
