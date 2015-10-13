# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common.mk)

# Extra tools in CM
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar
