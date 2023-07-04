#!/bin/bash
revert='false'
while getopts ':r' 'flag' ;
do
    case ${flag} in
        'r') revert='true'
        ;;
    esac
done
if ${revert}; then
    echo "Reverting iode patches..."
    git apply -R --directory frameworks/base framework_base_0001-FP3-activity-manager-service-sends-top-activity-to.patch
    git apply -R --directory packages/modules/DnsResolver packages_modules_DnsResolver_0001-iode-snort-additions.patch
    git apply -R --directory system/sepolicy system_sepolicy_0001-add-snort-sepolicy.patch
else
    echo "Applying iode patches..."
    git apply --directory frameworks/base framework_base_0001-FP3-activity-manager-service-sends-top-activity-to.patch
    git apply --directory packages/modules/DnsResolver packages_modules_DnsResolver_0001-iode-snort-additions.patch
    git apply --directory system/sepolicy system_sepolicy_0001-add-snort-sepolicy.patch
fi
