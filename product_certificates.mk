ifneq ($(wildcard certs/platform.*),)
PREBUILT_CERTIFICATE := certs/platform
else
PREBUILT_CERTIFICATE := platform
endif
