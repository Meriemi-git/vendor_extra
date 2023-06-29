LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := bootanimation-iode
PACKAGES.$(LOCAL_MODULE).OVERRIDES := bootanimation.zip
LOCAL_MODULE_CLASS := ETC
$(shell mkdir -p $(TARGET_OUT)/media && cp $(LOCAL_PATH)/bootanimation-$(TARGET_SCREEN_WIDTH).zip $(TARGET_OUT)/media/bootanimation.zip)
include $(BUILD_PHONY_PACKAGE)
