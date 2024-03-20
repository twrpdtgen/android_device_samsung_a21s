#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a21s device
$(call inherit-product, device/samsung/a21s/device.mk)

PRODUCT_DEVICE := a21s
PRODUCT_NAME := omni_a21s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A217M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a21sub-user 12 SP1A.210812.016 A217MUBSBDWK1 release-keys"

BUILD_FINGERPRINT := samsung/a21sub/a21s:12/SP1A.210812.016/A217MUBSBDWK1:user/release-keys
