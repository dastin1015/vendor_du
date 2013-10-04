# Inherit AOSP device configuration for inc.
$(call inherit-product, device/hp/tenderloin/full_tenderloin.mk)

# Inherit some common du stuff.
$(call inherit-product, vendor/du/configs/common_tablet.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := du_tenderloin
PRODUCT_BRAND := HP
PRODUCT_DEVICE := tenderloin
PRODUCT_MODEL := Touchpad
PRODUCT_MANUFACTURER := HP
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=touchpad \
    BUILD_FINGERPRINT="google/mantaray/manta:4.2.1/JOP40C/527662:user/release-keys" \
    PRIVATE_BUILD_DESC="manta-user 4.2.1 JOP40C 527662 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

# USB
#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,adb
#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
