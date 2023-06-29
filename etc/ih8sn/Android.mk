LOCAL_PATH := $(call my-dir)

ih8sn_conf := ih8sn-$(TARGET_DEVICE).conf

ifneq ($(wildcard $(LOCAL_PATH)/$(ih8sn_conf)),)

include $(CLEAR_VARS)
LOCAL_MODULE := ih8sn.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT_ETC)
LOCAL_SRC_FILES := $(ih8sn_conf)
include $(BUILD_PREBUILT)

endif
