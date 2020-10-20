LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := get_offsets.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../camera/QCamera2/stack/common

LOCAL_HEADER_LIBRARIES := generated_kernel_headers

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := get_offsets
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_VENDOR_MODULE := true

LOCAL_CFLAGS := -Wall -Werror

LOCAL_32_BIT_ONLY := true

include $(BUILD_EXECUTABLE)