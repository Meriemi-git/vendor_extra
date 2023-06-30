LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Firefox
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := fenix-114.2.0-arm64-v8a.apk

LOCAL_OPTIONAL_USES_LIBRARIES := \
  androidx.window.extensions \
  androidx.window.sidecar

include $(BUILD_PREBUILT)
