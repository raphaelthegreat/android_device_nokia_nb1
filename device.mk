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


# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from nokia msm8998-common
$(call inherit-product, device/nokia/msm8998-common/msm8998.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Audio
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8998 \
    libmm-qcamera \
    mm-qcamera-app \
    libhal_dbg

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.nokia_nb1 \
    libshims_gxfpd \
    libunwind-vendor \
    libbacktrace-vendor

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/goodix_fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix_fp.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Ramdisk
PRODUCT_PACKAGES += \
    init.nb1.fingerprint.rc \
    init.nb1.target.rc

# Get non-open-source specific aspects
$(call inherit-product, vendor/nokia/NB1/NB1-vendor.mk)