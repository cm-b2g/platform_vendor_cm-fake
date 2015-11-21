# Inherit common b2g stuff
$(call inherit-product, vendor/cm/config/common_b2g.mk)

# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common.mk)

# Extra tools in CM
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar \
    curl
