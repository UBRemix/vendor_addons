LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Substratum. Use recreate
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.recreate=true

# Prebuilts
PRODUCT_PACKAGES += \
    BenzoBlock \
    SnapBrowser \
    Substratum
