LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Aves
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := app-izzy-arm64-v8a-release.apk

LOCAL_OPTIONAL_USES_LIBRARIES := \
  org.apache.http.legacy \
  androidx.window.extensions \
  androidx.window.sidecar

LOCAL_OVERRIDES_PACKAGES := Gallery2

include $(BUILD_PREBUILT)
