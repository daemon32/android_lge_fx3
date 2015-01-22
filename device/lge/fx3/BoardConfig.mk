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

COMMON_GLOBAL_CFLAGS += -DLG870 -DLG870

# inherit from common msm8960
-include device/lge/msm8960-common/BoardConfigCommon.mk

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/lge/fx3/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fx3s

# Bluetooth
TARGET_CUSTOM_BLUEDROID := ../../../device/lge/fx3/bluetooth/bluetooth.c

# Kernel
BOARD_CUSTOM_BOOTIMG_MK      := device/lge/fx3/releasetools/mkbootimg_bump.mk
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=fx3s user_debug=31 vmalloc=308M
BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000


# Fake kernel
#TARGET_PREBUILT_KERNEL := device/lge/fx3/kernel
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

TARGET_KERNEL_SOURCE := kernel
TARGET_KERNEL_CONFIG := fx3_spcs_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

# QCOM GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := fx3

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_WLAN_DEVICE                := qcwcn
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"

WIFI_DRIVER_MODULE_NAME          := wlan
#WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 50331648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5167382528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5536481280
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 97

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/lge/fx3/recovery/root/etc/recovery.fstab
TARGET_RECOVERY_INITRC := device/lge/fx3/recovery/root/init.recovery.rc
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/lcd/panel/backlight\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_RECOVERY_SWIPE := true

# Recovery
BOARD_CUSTOM_GRAPHICS:= ../../../device/lge/fx3/recovery/graphics.c
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/f160l/recovery/recovery_keys.c
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_d1lu

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_RES := device/lge/fx3/ramdisk/res/images/charger

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/lge/fx3/releasetools/ota_from_target_files
