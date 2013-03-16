# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/kumquat/BoardConfigVendor.mk

#inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/kumquat/include

TARGET_KERNEL_CONFIG := semc_kumquat_defconfig
#TARGET_KERNEL_PREBUILT :=
#TARGET_KERNEL_SOURCE := /kernel/sony/u8500
#BOARD_KERNEL_BASE := 0x40200000
#BOARD_RECOVERY_BASE := 0x40200000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_FORCE_RAMDISK_ADDRESS := 0x41200000

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_CMDLINE := device/sony/kumquat/config/cmdline.txt

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATA_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_FORCE_KERNEL_ADDRESS  := 0x00008000
BOARD_FORCE_RAMDISK_ADDRESS := 0x01000000

COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14

TARGET_OTA_ASSERT_DEVICE := ST25i,ST25a,kumquat

#TWRP
DEVICE_RESOLUTION := 480x854
