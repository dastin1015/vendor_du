$(call inherit-product, device/htc/shooter/shooter.mk)

PRODUCT_RELEASE_NAME := Shooter

# Inherit some common files.
$(call inherit-product, vendor/du/configs/common.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/shooter/overlay

# Inherit some common files.
$(call inherit-product, vendor/du/configs/cdma.mk)

## apns
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT="htc/htc_shooter/shooter:4.0.3/IML74K/560205.6:user/release-keys" PRIVATE_BUILD_DESC="2.95.651.6 CL560205 release-keys"

PRODUCT_NAME := du_shooter
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC

# Release name and versioning
-include vendor/du/configs/common_versions.mk

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip
