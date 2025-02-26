#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PH1M_EA_9970A device
$(call inherit-product, device/tpv/PH1M_EA_9970A/device.mk)

PRODUCT_DEVICE := PH1M_EA_9970A
PRODUCT_NAME := twrp_PH1M_EA_9970A
PRODUCT_BRAND := Philips
PRODUCT_MODEL := 2021/22 Philips UHD Android TV
PRODUCT_MANUFACTURER := tpv

PRODUCT_GMS_CLIENTID_BASE := android-tpv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PH1M_EA_9970A-user 11 RTT2.211108.001 2916 release-keys"

BUILD_FINGERPRINT := Philips/PH1M_EA_9970A/PH1M_EA_9970A:11/RTT2.211108.001/2916:user/release-keys
