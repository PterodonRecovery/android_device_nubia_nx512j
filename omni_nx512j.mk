$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

LOCAL_PATH := device/nubia/nx512j

# Charger
PRODUCT_PACKAGES += charger charger_res_images \
    init.recovery.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/recovery/etc/recovery.fstab:root/etc/recovery.fstab

## Device identifier. This must come after all inclusions
BOARD_VENDOR := nubia
PRODUCT_DEVICE := nx512j
PRODUCT_NAME := omni_nx512j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Z9 Max
PRODUCT_MANUFACTURER := nubia
TARGET_VENDOR := nubia

PRODUCT_RELEASE_NAME := nx512j
PRODUCT_GMS_CLIENTID_BASE := android-nubia



