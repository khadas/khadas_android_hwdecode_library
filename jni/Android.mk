LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libkhadas_hwdecode_jni
#LOCAL_MODULE_TAGS := optional
#LOCAL_ARM_MODE := arm
LOCAL_SRC_FILES := \
	esplayer.cpp \
	vcodec.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/amcodec/include \
	system/core/liblog/include \
	system/core/libutils/include \
	$(JNI_H_INCLUDE)


LOCAL_LDLIBS := -llog
#LOCAL_VENDOR_MODULE := true

#include $(BUILD_SHARED_LIBRARY)

LOCAL_CFLAGS += $(CFLAG)
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 26 && echo OK),OK)
	LOCAL_PROPRIETARY_MODULE := true
endif

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true


include $(BUILD_SHARED_LIBRARY)

