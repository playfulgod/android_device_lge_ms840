# Release name
PRODUCT_RELEASE_NAME := Connect 4G

# Custom apns must come before cdma.mk is included
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/ms840/full_ms840.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ms840
PRODUCT_NAME := cm_ms840
PRODUCT_BRAND := MetroPCS
PRODUCT_MODEL := MS840 4G
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone
