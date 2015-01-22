LOCAL_PATH := $(call my-dir)

## Imported from the original makefile...
KERNEL_CONFIG := $(KERNEL_OUT)/.config

KERNEL_ZIMG = $(KERNEL_OUT)/arch/arm/boot/zImage

define bump-boot
#$(shell python2 $(LOCAL_PATH)bump/open_bump.py $(OUT)/target/product/fx3/boot.img)
$(LOCAL_PATH)/bump/open_bump.py $(OUT)/boot.img
endef

define bump-recovery
#$(shell python2 $(LOCAL_PATH)/bump/open_bump.py $(OUT)/target/product/fx3/recovery.img)
$(LOCAL_PATH)/bump/open_bump.py $(OUT)/recovery.img
endef

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}
	$(call bump-boot)
	@echo -e ${CL_CYN}"Made bumped boot image"${CL_RST}
	@echo -e ${CL_CYN}"Thank you CyboLabs"${CL_RST}

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG)  $(recovery_ramdisk) $(recovery_kernel)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	$(call bump-recovery)
	@echo -e ${CL_CYN}"Made bumped recovery image"${CL_RST}
	@echo -e ${CL_CYN}"Thank you CyboLabs"${CL_RST}
