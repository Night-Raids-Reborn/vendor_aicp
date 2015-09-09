# Inherit AICP common bits
$(call inherit-product, vendor/aicp/configs/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for vs985
$(call inherit-product, device/lge/vs985/full_vs985.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs985
PRODUCT_NAME := aicp_vs985
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-VS985
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_vzw_us" \
    BUILD_FINGERPRINT="lge/g3_vzw/g3:5.0.1/LRX21Y/1516810098cf1:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_vzw-user 5.0.1 LRX21Y 1516810098cf1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="doc HD (semdoc), Vasilj M (eboye)"

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/aicp/configs/bootanimation.mk
