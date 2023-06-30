LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := FairEmail
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := FairEmail-v1.2078a-github-release.apk
LOCAL_OPTIONAL_USES_LIBRARIES := \
  androidx.window.extensions \
  androidx.window.sidecar \

include $(BUILD_PREBUILT)
