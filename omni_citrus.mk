#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

PRODUCT_DEVICE := citrus
PRODUCT_NAME := omni_citrus
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bootleg_citrus-userdebug 13 TQ2A.230305.008.C1 eng.hani.20230409.190214 release-keys"

BUILD_FINGERPRINT := POCO/bootleg_citrus/citrus:13/TQ2A.230305.008.C1/hani04091900:userdebug/release-keys
