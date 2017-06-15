# Create links from /vendor to /system for AOSP without vendor builds
#ifneq (,$(filter aosp_bullhead, $(TARGET_PRODUCT)))

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := AOSPLinks
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional

LOCAL_POST_INSTALL_CMD := \
  test -s $(PRODUCT_OUT)/system/vendor/etc/audio_effects.conf && { \
  rm -rf $(PRODUCT_OUT)/system/vendor; \
  ln -sf /vendor $(PRODUCT_OUT)/system/vendor; }

include $(BUILD_PHONY_PACKAGE)

#endif # aosp_bullhead
