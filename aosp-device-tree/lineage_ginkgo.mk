#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

PRODUCT_DEVICE := ginkgo
PRODUCT_NAME := lineage_ginkgo
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ginkgo-user 11 RKQ1.201004.002 V12.5.2.0.RCOMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/ginkgo/ginkgo:11/RKQ1.201004.002/V12.5.2.0.RCOMIXM:user/release-keys
