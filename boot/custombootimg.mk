LOCAL_PATH := $(call my-dir)

$(INSTALLED_BOOTIMAGE_TARGET): \
		$(MKBOOTIMG) \
		$(INTERNAL_BOOTIMAGE_FILES) \
		$(INSTALLED_DTIMAGE_TARGET)
	@echo -e ${CL_CYN}"----- Making boot image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) \
		$(INTERNAL_BOOTIMAGE_ARGS) \
		$(BOARD_MKBOOTIMG_ARGS) \
		--dt $(PRODUCT_OUT)/dt.img \
		--output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	$(call pretty,"Made boot image: $@")
