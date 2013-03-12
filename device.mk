$(call inherit-product-if-exists, vendor/lge/ms840/ms840-vendor.mk)

include device/lge/iproj/device.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Bluetooth
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/bin/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

## Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/root/init.iproj.rc:root/init.iproj.rc \
	$(LOCAL_PATH)/prebuilt/root/init.iproj.usb.rc:root/init.iproj.usb.rc \
	$(LOCAL_PATH)/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/prebuilt/root/ueventd.iproj.rc:root/ueventd.iproj.rc

## Baseband
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/init.qcom.baseband.sh:system/etc/init.qcom.baseband.sh

# Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Sim ToolKit
PRODUCT_PACKAGES += \
	Stk

#### Goo Manager support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=playfulgod \
	ro.goo.rom=CM10Connect \
	ro.goo.version=$(shell date +%Y%m%d )

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/app/com.s0up.goomanager-1.apk:system/app/com.s0up.goomanager-1.apk
