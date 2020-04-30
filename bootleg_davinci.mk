#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := davinci
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := bootleg_davinci

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=davinci

# Bootleg
TARGET_PICK_BOOTANIMATION:=6

DEVICE_MAINTAINERS := "GeopJr"

BOOTLEGGERS_BUILD_TYPE := Shishufied 

# Even if we don't have notch, this centers wallpaper
BOOTLEGGERS_NOTCHED := true

# Inherit from custom vendor
$(call inherit-product, vendor/ANXCamera/config.mk)
