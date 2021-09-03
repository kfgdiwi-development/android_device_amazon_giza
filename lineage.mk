#
# Copyright 2020 The LineageOS Project.
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from hinoki device
$(call inherit-product, device/amazon/giza/device.mk)

# Inherit from common device
$(call inherit-product, device/amazon/mt8163-common/mt8163-common.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit languages full.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := giza
PRODUCT_NAME := lineage_giza
PRODUCT_BRAND := google
PRODUCT_MODEL := Fire HD8 2016
PRODUCT_MANUFACTURER := amzn

# Spoof Fingerprint (CTS)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marlin-user 7.1 NDE63V 3389651 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:7.1/NDE63V/3389651:user/release-keys
