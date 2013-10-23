$(call inherit-product, vendor/du/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7tmo/full_m7tmo.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/m7

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PPRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="tmous/m7/m7:4.1.2/JZO54K/177101.16:user/release-keys" PRIVATE_BUILD_DESC="1.29.531.16 CL177101 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybrid_xxhdpi.conf:system/etc/beerbong/properties.conf

# Device naming
PRODUCT_DEVICE := m7tmo
PRODUCT_NAME := du_m7tmo
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
