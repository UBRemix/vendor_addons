
LOCAL_PATH := $(call my-dir)

# InstallBenzoBlock (smaller AdAway)
include $(CLEAR_VARS)
LOCAL_MODULE := BenzoBlock
LOCAL_SRC_FILES := BenzoBlock.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_MODULE_TAGS := optional
LOCAL_PREBUILT_JNI_LIBS_arm := \
	@lib/armeabi/libblank_webserver_exec.so \
	@lib/armeabi/libtcpdump_exec.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := PrebuiltBugle
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES    := PrebuiltBugle.apk
LOCAL_CERTIFICATE  := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_OVERRIDES_PACKAGES := messaging Messaging
LOCAL_PREBUILT_JNI_LIBS_arm64 := \
	@lib/arm64-v8a/libframesequence.so \
	@lib/arm64-v8a/libgiftranscode.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := SnapBrowser
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES    := SnapBrowser.apk
LOCAL_CERTIFICATE  := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_OVERRIDES_PACKAGES := Browser Browser2
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# Install Substratum
include $(CLEAR_VARS)
LOCAL_MODULE := Substratum
LOCAL_SRC_FILES := Substratum.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

