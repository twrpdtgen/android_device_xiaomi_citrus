#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
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
PRODUCT_MODEL := M2010J19CI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="citrus_in-user 11 RKQ1.201004.002 V12.5.6.0.RJFINXM release-keys"

BUILD_FINGERPRINT := POCO/citrus_in/citrus:11/RKQ1.201004.002/V12.5.6.0.RJFINXM:user/release-keys
