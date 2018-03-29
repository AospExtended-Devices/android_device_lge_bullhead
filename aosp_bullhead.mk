# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AospExtended stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
EXTENDED_BUILD_TYPE := TESTING

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT="google/bullhead/bullhead:8.1.0/OPM3.171019.016/4565142:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM3.171019.016 4565142 release-keys"
