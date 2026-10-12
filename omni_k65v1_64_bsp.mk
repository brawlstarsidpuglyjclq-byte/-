#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Наследование базовых конфигураций 64-битного Android
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# ГЛАВНОЕ: Подключаем исходники самого интерфейса TWRP для компилятора AOSP
$(call inherit-product, device/omni/twrp/twrp_product.mk)

# Наследование конфигурации оборудования из твоего родного исходника девайса
$(call inherit-product, device/alps/k65v1_64_bsp/device.mk)

# Параметры устройства
PRODUCT_DEVICE := k65v1_64_bsp
PRODUCT_NAME := omni_k65v1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := k65v1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-m3mobile

# Строки старой идентификации Android 11 закомментированы во избежание конфликтов на Android 16
# PRODUCT_BUILD_PROP_OVERRIDES += \
#     PRIVATE_BUILD_DESC="full_k65v1_64_bsp-user 11 RP1A.200720.011 mp1V8132 release-keys"

# BUILD_FINGERPRINT := M3/M3SL20/M3SL20:11/RP1A.200720.011/mp1V8132:user/release-keys

