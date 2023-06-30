ifneq ($(wildcard certs/releasekey.*),)
PRODUCT_DEFAULT_DEV_CERTIFICATE := certs/releasekey
PRODUCT_OTA_PUBLIC_CERTIFICATES := certs/releasekey
endif

ifneq ($(wildcard certs/sideload.*),)
PRODUCT_EXTRA_RECOVERY_CERTIFICATES := certs/sideload
endif

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay \
	$(LOCAL_PATH)/translations

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/init/smart_charging.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/smart_charging.rc \
	$(LOCAL_PATH)/etc/default-permissions/default-permissions-iode.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions-iode.xml \
	$(LOCAL_PATH)/etc/sysconfig/iode-sysconfig.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/iode-sysconfig.xml \

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST = \
	system/etc/microg.xml

PRODUCT_PACKAGES += \
	ih8sn \
	ih8sn.conf

PRODUCT_PACKAGES += \
	iode-snort \
	domains-black \
	domains-white \
	default-apps


ifeq (,$(INCLUDES_EXTRA_APPS))
PRODUCT_PACKAGES += \
	Iode \
	F-Droid \
	AuroraStore \
	Etar \
	Bitwarden \
	Davx \
	Firefox \
	ProtonMail \
	FairEmail \
	Aves \
	OrganicMaps \
	QKSMS \
	LibreTube \
	Element \
	Camera
endif
