# Release name
PRODUCT_RELEASE_NAME := i9308

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9308/full_i9308.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9308
PRODUCT_NAME := cm_i9308
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9308
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.3/JSS15J/i9308XXUGMJ9:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.3 JSS15J i9308XXUGMJ9 release-keys"
