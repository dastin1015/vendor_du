## Specify phone tech before including full_phone
$(call inherit-product, vendor/du/configs/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := Fascinate

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/configs/common.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/fascinatemtd

# Inherit device configuration
$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fascinatemtd
PRODUCT_NAME := du_fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I500

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_FINGERPRINT=verizon/SCH-I500/SCH-I500:2.3.5/GINGERBREAD/EI20:user/release-keys PRIVATE_BUILD_DESC="SCH-I500-user 2.3.5 GINGERBREAD EI20 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
