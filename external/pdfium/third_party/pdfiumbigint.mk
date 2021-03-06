LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libmodpdfiumbigint
LOCAL_SDK_VERSION := 9
LOCAL_CPPFLAGS += -std=c++11

LOCAL_ARM_MODE := arm
LOCAL_NDK_STL_VARIANT := c++_shared

LOCAL_CFLAGS += -O3 -fstrict-aliasing -fprefetch-loop-arrays -fexceptions
LOCAL_CFLAGS += -Wno-non-virtual-dtor -Wall

LOCAL_SRC_FILES := \
    bigint/BigInteger.cc \
    bigint/BigIntegerUtils.cc \
    bigint/BigUnsigned.cc \
    bigint/BigUnsignedInABase.cc

LOCAL_C_INCLUDES := \
    external/pdfium

include $(BUILD_STATIC_LIBRARY)
