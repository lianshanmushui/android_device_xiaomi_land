#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Pixel Experience stuff
$(call inherit-product, vendor/exthm/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720

# Pixel customization
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Inherit from land device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3S
PRODUCT_DEVICE := land
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := exthm_land

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := land

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys
