#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/lge/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/fx3/overlay

# Kernel Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/bootlogo_res_images-timestamp:root/bootlogo_res_images-timestamp \
    $(LOCAL_PATH)/ramdisk/charger:root/charger \
    $(LOCAL_PATH)/ramdisk/chargerlogo_res_images-timestamp:root/chargerlogo_res_images-timestamp \
    $(LOCAL_PATH)/ramdisk/default.prop:root/default.prop \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/ramdisk/init:root/init \
    $(LOCAL_PATH)/ramdisk/init.carrier.rc:root/init.carrier.rc \
    $(LOCAL_PATH)/ramdisk/init.fx3.rc:root/init.fx3.rc \
    $(LOCAL_PATH)/ramdisk/init.fx3s.rc:root/init.fx3s.rc \
    $(LOCAL_PATH)/ramdisk/init.lge.cmm.usb.sh:root/init.lge.cmm.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.lge.early.rc:root/init.lge.early.rc \
    $(LOCAL_PATH)/ramdisk/init.lge.rc:root/init.lge.rc \
    $(LOCAL_PATH)/ramdisk/init.lge.usb.rc:root/init.lge.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.lge.usb.sh:root/init.lge.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.lpm_boot.sh:root/init.qcom.lpm_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ramdisk/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/ramdisk/lgdms.fota.rc:root/lgdms.fota.rc \
    $(LOCAL_PATH)/ramdisk/lgdms.fota_update.rc:root/lgdms.fota_update.rc \
    $(LOCAL_PATH)/ramdisk/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.fx3s.rc:root/ueventd.fx3s.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00000.rle:root/bootimages/boot_logo_00000.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00001.rle:root/bootimages/boot_logo_00001.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00002.rle:root/bootimages/boot_logo_00002.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00003.rle:root/bootimages/boot_logo_00003.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00004.rle:root/bootimages/boot_logo_00004.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00005.rle:root/bootimages/boot_logo_00005.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00006.rle:root/bootimages/boot_logo_00006.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00007.rle:root/bootimages/boot_logo_00007.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00008.rle:root/bootimages/boot_logo_00008.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00009.rle:root/bootimages/boot_logo_00009.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00010.rle:root/bootimages/boot_logo_00010.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00011.rle:root/bootimages/boot_logo_00011.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00012.rle:root/bootimages/boot_logo_00012.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00013.rle:root/bootimages/boot_logo_00013.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00014.rle:root/bootimages/boot_logo_00014.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00015.rle:root/bootimages/boot_logo_00015.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00016.rle:root/bootimages/boot_logo_00016.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00017.rle:root/bootimages/boot_logo_00017.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00018.rle:root/bootimages/boot_logo_00018.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00019.rle:root/bootimages/boot_logo_00019.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00020.rle:root/bootimages/boot_logo_00020.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00021.rle:root/bootimages/boot_logo_00021.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00022.rle:root/bootimages/boot_logo_00022.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00023.rle:root/bootimages/boot_logo_00023.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00024.rle:root/bootimages/boot_logo_00024.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00025.rle:root/bootimages/boot_logo_00025.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00026.rle:root/bootimages/boot_logo_00026.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00027.rle:root/bootimages/boot_logo_00027.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00028.rle:root/bootimages/boot_logo_00028.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00029.rle:root/bootimages/boot_logo_00029.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00030.rle:root/bootimages/boot_logo_00030.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00031.rle:root/bootimages/boot_logo_00031.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00032.rle:root/bootimages/boot_logo_00032.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00033.rle:root/bootimages/boot_logo_00033.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00034.rle:root/bootimages/boot_logo_00034.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00035.rle:root/bootimages/boot_logo_00035.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00036.rle:root/bootimages/boot_logo_00036.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00037.rle:root/bootimages/boot_logo_00037.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00038.rle:root/bootimages/boot_logo_00038.rle \
    $(LOCAL_PATH)/ramdisk/bootimages/boot_logo_00039.rle:root/bootimages/boot_logo_00039.rle \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
    $(LOCAL_PATH)/ramdisk/res/images/errorlogo.png:root/res/images/errorlogo.png \
    $(LOCAL_PATH)/ramdisk/sbin/adbd:root/sbin/adbd \
    $(LOCAL_PATH)/ramdisk/sbin/bootlogo_fx3:root/sbin/bootlogo_fx3 \
    $(LOCAL_PATH)/ramdisk/sbin/chargerlogo:root/sbin/chargerlogo \
    $(LOCAL_PATH)/ramdisk/sbin/e2fsck_static:root/sbin/e2fsck_static \
    $(LOCAL_PATH)/ramdisk/sbin/lge_fota:root/sbin/lge_fota \
    $(LOCAL_PATH)/ramdisk/sbin/make_ext4fs:root/sbin/make_ext4fs \
    $(LOCAL_PATH)/ramdisk/sbin/setup_fs:root/sbin/setup_fs \
    $(LOCAL_PATH)/ramdisk/sbin/sreadahead_check:root/sbin/sreadahead_check \
    $(LOCAL_PATH)/ramdisk/sbin/treadahead:root/sbin/treadahead \
    $(LOCAL_PATH)/ramdisk/sbin/wallpaper:root/sbin/wallpaper \
    $(LOCAL_PATH)/ramdisk/sbin/write_recovery:root/sbin/write_recovery \

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/fstab.fx3s:recovery/root/root/fstab.fx3s \
    $(LOCAL_PATH)/recovery/root/ueventd.fx3s.rc:recovery/root/root/ueventd.fx3s.rc \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.rc:recovery/root/init.recovery.rc \

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/init.goldfish.sh:/system/etc/init.goldfish.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.audio.sh:/system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.efs.sync.sh:/system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.modem_links_1.sh:/system/etc/init.qcom.modem_links_1.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.post_fs.sh:/system/etc/init.qcom.post_fs.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.thermald_conf.sh:/system/etc/init.qcom.thermald_conf.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \


# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/thermald.conf:/system/etc/thermald.conf

# snd_soc_msm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm 

# Sound effects
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf
# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/d1lu-keypad.kl:system/usr/keylayout/d1lu-keypad.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/osp-input.kl:system/usr/keylayout/osp-input.kl

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/usr/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    $(LOCAL_PATH)/prebuilts/usr/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/prebuilts/usr/idc/osp-input.idc:system/usr/idc/osp-input.idc

# Wifi firmware & Jellybean Adreno firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/cyttsp_8064_mtp.hex:/system/etc/firmware/cyttsp_8064_mtp.hex \
    $(LOCAL_PATH)/prebuilts/etc/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    $(LOCAL_PATH)/prebuilts/etc/firmware/fw_bcmdhd.bin:/system/etc/firmware/fw_bcmdhd.bin \
    $(LOCAL_PATH)/prebuilts/etc/firmware/fw_bcmdhd_apsta.bin:/system/etc/firmware/fw_bcmdhd_apsta.bin \
    $(LOCAL_PATH)/prebuilts/etc/firmware/fw_bcmdhd_mfg.bin:/system/etc/firmware/fw_bcmdhd_mfg.bin \
    $(LOCAL_PATH)/prebuilts/etc/firmware/fw_bcmdhd_p2p.bin:/system/etc/firmware/fw_bcmdhd_p2p.bin \
    $(LOCAL_PATH)/prebuilts/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf 

# Wifi config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilts/etc/wifi/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/prebuilts/etc/wifi/p2p_supplicant.conf:/system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/prebuilts/etc/wifi/FTM_PowerTable.XML:/system/etc/wifi/FTM_PowerTable.XML

# DNS hooks
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:/system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/prebuilts/etc/dhcpcd/dhcpcd-hooks/95-configured:/system/etc/dhcpcd/dhcpcd-hooks/95-configured



# Video (Temp)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/lib/libOmxVdec.so:/obj/lib/libOmxVdec.so \
    $(LOCAL_PATH)/prebuilts/lib/libOmxVdec.so:/system/lib/libOmxVdec.so

# NFCEE access control
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# GPS
#PRODUCT_PACKAGES += \
#    gps.fx3 \

# Torch
PRODUCT_PACKAGES += \
    Torch

# hostapd
PRODUCT_PACKAGES += \
    hostapd


# Kernel modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/lib/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/bluetooth-power.ko:/system/lib/modules/bluetooth-power.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/dma_test.ko:/system/lib/modules/dma_test.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/eeprom_93cx6.ko:/system/lib/modules/eeprom_93cx6.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/evbug.ko:/system/lib/modules/evbug.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/ks8851.ko:/system/lib/modules/ks8851.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/lcd.ko:/system/lib/modules/lcd.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/mcdrvmodule.ko:/system/lib/modules/mcdrvmodule.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/mckernelapi.ko:/system/lib/modules/mckernelapi.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/mmc_block_test.ko:/system/lib/modules/mmc_block_test.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/mmc_test.ko:/system/lib/modules/mmc_test.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/qce40.ko:/system/lib/modules/qce40.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/qcedev.ko:/system/lib/modules/qcedev.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/radio-iris-transport.ko:/system/lib/modules/radio-iris-transport.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/reset_modem.ko:/system/lib/modules/reset_modem.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/spidev.ko:/system/lib/modules/spidev.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/tcp_htcp.ko:/system/lib/modules/tcp_htcp.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/tcp_westwood.ko:/system/lib/modules/tcp_westwood.ko \
    $(LOCAL_PATH)/prebuilts/lib/modules/test-iosched.ko:/system/lib/modules/test-iosched.ko \

# Charger images
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_bg.png:/system/vendor/etc/chargerimages/battery_bg.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_01.png:/system/vendor/etc/chargerimages/battery_charging_01.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_02.png:/system/vendor/etc/chargerimages/battery_charging_02.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_03.png:/system/vendor/etc/chargerimages/battery_charging_03.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_04.png:/system/vendor/etc/chargerimages/battery_charging_04.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_05.png:/system/vendor/etc/chargerimages/battery_charging_05.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_06.png:/system/vendor/etc/chargerimages/battery_charging_06.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_07.png:/system/vendor/etc/chargerimages/battery_charging_07.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_08.png:/system/vendor/etc/chargerimages/battery_charging_08.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_09.png:/system/vendor/etc/chargerimages/battery_charging_09.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_bg.png:/system/vendor/etc/chargerimages/battery_charging.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning.png:/system/vendor/etc/chargerimages/battery_charging_warning.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning_eng_1.png:/system/vendor/etc/chargerimages/battery_charging_warning_eng_1.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning_eng_2.png:/system/vendor/etc/chargerimages/battery_charging_warning_eng_2.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning_jp_1.png:/system/vendor/etc/chargerimages/battery_charging_warning_jp_1.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning_jp_2.png:/system/vendor/etc/chargerimages/battery_charging_warning_jp_2.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning_kor_1.png:/system/vendor/etc/chargerimages/battery_charging_warning_kor_1.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_charging_warning_kor_2.png:/system/vendor/etc/chargerimages/battery_charging_warning_kor_2.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_slow_charging.png:/system/vendor/etc/chargerimages/battery_slow_charging.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_trickle_ani_01.png:/system/vendor/etc/chargerimages/battery_trickle_ani_01.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_trickle_ani_02.png:/system/vendor/etc/chargerimages/battery_trickle_ani_02.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_wait_ani_01.png:/system/vendor/etc/chargerimages/battery_wait_ani_01.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/battery_wait_ani_02.png:/system/vendor/etc/chargerimages/battery_wait_ani_02.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/black_bg.png:/system/vendor/etc/chargerimages/black_bg.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/charging_interrupted.png:/system/vendor/etc/chargerimages/charging_interrupted.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/charging_pad_found.png:/system/vendor/etc/chargerimages/charging_pad_found.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/charging_stopped.png:/system/vendor/etc/chargerimages/charging_stopped.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/popup_notice.png:/system/vendor/etc/chargerimages/popup_notice.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/popup_recoverymode_eng.png:/system/vendor/etc/chargerimages/popup_recoverymode_eng.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/popup_recoverymode_kor.png:/system/vendor/etc/chargerimages/popup_recoverymode_kor.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/warning_temperature_KR.png:/system/vendor/etc/chargerimages/warning_temperature_KR.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/warning_trickle_KR.png:/system/vendor/etc/chargerimages/warning_trickle_KR.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/warning_trickle_US.png:/system/vendor/etc/chargerimages/warning_trickle_US.png \
    $(LOCAL_PATH)/prebuilts/vendor/etc/chargerimages/wireless_charging.png:/system/vendor/etc/chargerimages/wireless_charging.png \

# 2nd-init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/2nd-init/recovery.tar:/system/xbin/recovery.tar \
    $(LOCAL_PATH)/2nd-init/cm10.tar:/system/xbin/cm10.tar

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# OTA & Stat Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=chevanlol360 \
	ro.goo.rom=cyanogenmodSequent \
        ro.romstats.url=http://androidnexus.us/stats/statschev/submit.php \
        ro.romstats.name=CyanogenMod10 \
        ro.romstats.tframe=7 \
        ro.romstats.version=$(shell date +%Y%m%d ) \
	ro.goo.version=$(shell date +%Y%m%d )

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/app/RomStats.apk:system/app/RomStats.apk \
    $(LOCAL_PATH)/prebuilts/app/com.s0up.goomanager-1.apk:system/app/com.s0up.goomanager-1.apk


# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0 

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lge/fx3/fx3-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
