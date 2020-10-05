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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from nokia msm8998-common
$(call inherit-product, device/nokia/msm8998-common/msm8998.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.fih.elabel.rc \
    init.fih.fqcaudio.rc \
    init.nb1.battery.rc \
    init.nb1.camera.rc \
    init.nb1.dbg.rc \
    init.nb1.fingerprint.rc \
    init.nb1.lcm.rc \
    init.nb1.led.rc \
    init.nb1.poweroff_charging.rc \
    init.nb1.sd.rc \
    init.nb1.smartamp.rc \
    init.nb1.target.rc \
    init.nb1.touch.rc \
    init.nb1.wbg.rc \
    init.nfc.nxp.rc

PRODUCT_PACKAGES += \
    init.nb1.lcm.sh \
    init.nb1.smartamp_init.sh

# Get non-open-source specific aspects
$(call inherit-product, vendor/nokia/NB1/NB1-vendor.mk)
