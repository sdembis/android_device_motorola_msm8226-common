#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := thermal.c

LOCAL_MODULE := libshims_thermal
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# libqsap_sdk
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libqsap_shim.c
LOCAL_SHARED_LIBRARIES := libqsap_sdk liblog
LOCAL_C_INCLUDES := $(TOP)/system/qcom/softap/sdk
LOCAL_MODULE := libqsap_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := camera.c

LOCAL_MODULE := libshims_camera
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := liblog

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := atomic.cpp

LOCAL_MODULE := libshims_atomic
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := liblog

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    sensorlistener/ISensorServer.cpp \
    sensorlistener/SensorManager.cpp

LOCAL_MODULE := libshims_sensorlistener
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := \
    libnativeloader \
    libbinder \
    libcutils \
    libEGL \
    libGLESv2 \
    libsync \
    libui \
    libutils \
    liblog \
    libbase \
    libsensor

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    icu56.c \
    moto_camera_misc.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n liblog
LOCAL_MODULE := libshim_qcopt
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := icu58.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n liblog
LOCAL_MODULE := libshim_skia
LOCAL_MODULE_TAGS := optional

 include $(BUILD_SHARED_LIBRARY)
