#!/bin/bash
git apply --directory frameworks/base framework_base_0001-FP3-activity-manager-service-sends-top-activity-to.patch
git apply --directory packages/modules/DnsResolver packages_modules_DnsResolver_0001-iode-snort-additions.patch
git apply --directory system/sepolicy system_sepolicy_0001-add-snort-sepolicy.patch
