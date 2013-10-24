# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit AOKP common_tablet bits
$(call inherit-product, vendor/du/configs/common_tablet.mk)

# Flo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/flo

# Setup device specific product configuration.
PRODUCT_NAME := du_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.3/JSS15R/804956:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.3 JSS15R 804956 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
