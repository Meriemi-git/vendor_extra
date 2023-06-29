LOCAL_PATH := $(call my-dir)

include vendor/extra/product_certificates.mk

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := Iode
LOCAL_SRC_FILES := Iode.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_OPTIONAL_USES_LIBRARIES := \
  androidx.window.extensions \
  androidx.window.sidecar
LOCAL_CERTIFICATE := $(PREBUILT_CERTIFICATE)
include $(BUILD_PREBUILT)
