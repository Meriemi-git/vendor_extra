LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Nextcloud
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := false
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OPTIONAL_USES_LIBRARIES := org.apache.http.legacy
LOCAL_SRC_FILES := com.nextcloud.client_30240190.apk

include $(BUILD_PREBUILT)
