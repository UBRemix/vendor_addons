LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Hide KA launcher
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kerneladiutor.hide=true

# Substratum. Use recreate
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.recreate=true

# Prebuilts
PRODUCT_PACKAGES += \
    BenzoBlock \
    KernelAdiutor \
    SnapBrowser \
    Substratum
