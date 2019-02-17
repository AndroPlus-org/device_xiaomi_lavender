#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
-include device/xiaomi/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lavender

# Root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := lavender

# IR Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 1

# Camera
USE_CAMERA_STUB := true

# Kernel
TARGET_KERNEL_CONFIG := lavender_user_defconfig
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_CMDLINE += enforcing=0
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
-include vendor/xiaomi/lavender/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_lavender
TARGET_RECOVERY_DEVICE_MODULES := libinit_lavender

# Treble
BOARD_VNDK_RUNTIME_DISABLE := false

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Dual Wi-Fi interface
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true