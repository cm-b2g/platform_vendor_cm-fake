# for Gecko to boot to recovery
# Ensure your fstab has a /persist partition
export USE_SET_METADATA := true
ENABLE_LIBRECOVERY := true
PRODUCT_PACKAGES += \
    librecovery

# for Gecko to support internal storage
ifeq ($(GECKO_BOARD_SEPARATE_STORAGE_PARTITON),true)
RECOVERY_EXTERNAL_STORAGE := /storage/sdcard1
else
RECOVERY_EXTERNAL_STORAGE := /data/media/0
PRODUCT_COPY_FILES += \
    vendor/cm/volume.cfg:system/etc/volume.cfg
endif

# for Gecko to support bluetooth stack
ifeq ($(BOARD_HAVE_BLUETOOTH),true)
PRODUCT_PACKAGES += \
    bluetooth.default
endif

# for Gecko to support physical buttons
PRODUCT_COPY_FILES += \
    vendor/cm/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Disable SELinux (Firefox OS currently does not support SELinux)
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
