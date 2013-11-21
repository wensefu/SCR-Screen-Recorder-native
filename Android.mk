LOCAL_PATH := $(call my-dir)

SCR_SHARED_LIBRARIES := \
    libcutils \
    libEGL \
    libmedia \
    libutils \
    libbinder \
    libgui \
    libui \
    libGLESv2 \
    libz \

SCR_STATIC_LIBRARIES := \
    libavdevice-1.2                        \
    libavformat-1.2                        \
    libavfilter-1.2                        \
    libavcodec-1.2                         \
    libswresample-1.2                      \
    libswscale-1.2                         \
    libavutil-1.2                          \

SCR_C_INCLUDES := \
    external/ffmpeg-1.2.android \
    external/ffmpeg-1.2.android/android/full-userdebug \

SCR_CFLAGS := -D__STDC_CONSTANT_MACROS -DSCR_SDK_VERSION=$(PLATFORM_SDK_VERSION)

SCR_SRC_FILES := \
    mediarecorder_output.cpp \
    ffmpeg_output.cpp \
    capture.cpp \
    audio_hal_installer.cpp \
    main.cpp \

SCR_LDLIBS += -lm
include $(CLEAR_VARS)


LOCAL_MODULE := screenrec-free
LOCAL_CFLAGS := $(SCR_CFLAGS) -DSCR_FREE

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(SCR_SRC_FILES)
LOCAL_SHARED_LIBRARIES := $(SCR_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES := $(SCR_STATIC_LIBRARIES)
LOCAL_C_INCLUDES := $(SCR_C_INCLUDES)
LOCAL_LDLIBS := $(LOCAL_CFLAGS)
include $(BUILD_EXECUTABLE)
include $(CLEAR_VARS)

LOCAL_MODULE := screenrec-fb-free
LOCAL_CFLAGS := $(SCR_CFLAGS) -DSCR_FREE -DSCR_FB

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(SCR_SRC_FILES)
LOCAL_SHARED_LIBRARIES := $(SCR_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES := $(SCR_STATIC_LIBRARIES)
LOCAL_C_INCLUDES := $(SCR_C_INCLUDES)
LOCAL_LDLIBS := $(LOCAL_CFLAGS)
include $(BUILD_EXECUTABLE)
include $(CLEAR_VARS)


LOCAL_MODULE := screenrec-pro
LOCAL_CFLAGS := $(SCR_CFLAGS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(SCR_SRC_FILES)
LOCAL_SHARED_LIBRARIES := $(SCR_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES := $(SCR_STATIC_LIBRARIES)
LOCAL_C_INCLUDES := $(SCR_C_INCLUDES)
LOCAL_LDLIBS := $(LOCAL_CFLAGS)
include $(BUILD_EXECUTABLE)
include $(CLEAR_VARS)

LOCAL_MODULE := screenrec-fb-pro
LOCAL_CFLAGS := $(SCR_CFLAGS) -DSCR_FB

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(SCR_SRC_FILES)
LOCAL_SHARED_LIBRARIES := $(SCR_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES := $(SCR_STATIC_LIBRARIES)
LOCAL_C_INCLUDES := $(SCR_C_INCLUDES)
LOCAL_LDLIBS := $(LOCAL_CFLAGS)
include $(BUILD_EXECUTABLE)