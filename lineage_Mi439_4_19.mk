#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# EPPE
TARGET_DISABLE_EPPE := true

# Rear camera specs
AXION_CAMERA_REAR_INFO := 5

# Front camera specs
AXION_CAMERA_FRONT_INFO := 13

# Maintainer name
AXION_MAINTAINER := tavukkdoner

# Processor name
AXION_PROCESSOR := SDM439

# Dex2oat - recommended: 2 small cores only
DEX2OAT_CORES = 6,7
DEX2OAT_THREADS = 2
# ViperFX
TARGET_INCLUDE_VIPERFX = true
# Matlog
TARGET_INCLUDE_MATLOG = true
# LOS Prebuilts
TARGET_INCLUDES_LOS_PREBUILTS = true
# Flashlight strength
TORCH_STR_SUPPORTED = true

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Inherit from Mi439 device
$(call inherit-product, device/xiaomi/Mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi439_4_19
PRODUCT_NAME := lineage_Mi439_4_19
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys" \
    BuildFingerprint=Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys
