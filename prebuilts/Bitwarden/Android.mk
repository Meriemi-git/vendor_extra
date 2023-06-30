LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Bitwarden
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OPTIONAL_USES_LIBRARIES := org.apache.http.legacy
LOCAL_SRC_FILES := com.x8bit.bitwarden.apk

include $(BUILD_PREBUILT)
