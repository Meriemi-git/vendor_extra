LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Camera
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := Camera-63.apk
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.camera.extensions.impl
LOCAL_OVERRIDES_PACKAGES := Camera2

include $(BUILD_PREBUILT)
