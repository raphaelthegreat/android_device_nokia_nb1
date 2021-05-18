#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from nokia msm8998-common
include device/nokia/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/nokia/NB1

# Platform
TARGET_BOARD_PLATFORM := msm8998

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
DEVICE_SPECIFIC_CAMERA_PATH := $(DEVICE_PATH)/camera
TARGET_SUPPORT_HAL1 := true
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_USES_MEDIA_EXTENSIONS := true
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG := nb1_defconfig
TARGET_KERNEL_VERSION := 4.4

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54429687808 # 54429835264 - 131072
BOARD_FLASH_BLOCK_SIZE := 262144

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Non Treble
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 55503577088