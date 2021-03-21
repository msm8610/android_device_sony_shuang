LOCAL_PATH := $(call my-dir)

LOCAL_EXPORT_C_INCLUDE_DIRS= \
  core/ \
  utils/ \
  ../platform_lib_abstractions/

include $(call all-makefiles-under,$(LOCAL_PATH))
