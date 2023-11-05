#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A7S device
$(call inherit-product, device/hxy/A7S/device.mk)

PRODUCT_DEVICE := A7S
PRODUCT_NAME := omni_A7S
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A7S
PRODUCT_MANUFACTURER := hxy

PRODUCT_GMS_CLIENTID_BASE := android-sanmu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_g2037spb_v1_ga_ym_a7s_gq-user 10 QP1A.190711.020 2210111702 release-keys"

BUILD_FINGERPRINT := UMIDIGI/A7S/A7S:10/QP1A.190711.020/2210111702:user/release-keys
