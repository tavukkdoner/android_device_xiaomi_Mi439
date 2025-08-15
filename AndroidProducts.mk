#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/voltage_Mi439.mk \
    $(LOCAL_DIR)/voltage_Mi439_4_19.mk

COMMON_LUNCH_CHOICES := \
    voltage_Mi439-user \
    voltage_Mi439-userdebug \
    voltage_Mi439-eng \
    voltage_Mi439_4_19-user \
    voltage_Mi439_4_19-userdebug \
    voltage_Mi439_4_19-eng
