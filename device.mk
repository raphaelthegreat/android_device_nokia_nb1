#
# Copyright (C) 2020 The LineageOS Project
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

DEVICE_PATH := device/nokia/NB1

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from nokia msm8998-common
$(call inherit-product, device/nokia/msm8998-common/msm8998.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.nokia_nb1

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/goodix_fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix_fp.kl \
    $(DEVICE_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(DEVICE_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Shims
PRODUCT_PACKAGES += \
    libshim_binder \
    libshim_gui

# Ramdisk
PRODUCT_PACKAGES += \
    init.nb1.fingerprint.rc \
    init.nb1.target.rc

# Get non-open-source specific aspects
$(call inherit-product, vendor/nokia/NB1/NB1-vendor.mk)