LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := AuroraStore
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := com.aurora.store_45.apk
LOCAL_OPTIONAL_USES_LIBRARIES := \
  androidx.window.extensions \
  androidx.window.sidecar \

include $(BUILD_PREBUILT)
