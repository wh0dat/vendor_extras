# This makefile adds the ability to use precompiled apks
# in a source build. Modify LOCAL_MODULE and
# LOCAL_OVERRIDES_PACKAGES to modify "build-script's" behavior

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := TimeWeather
# ^^ Include this name in lineage.mk
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
# ^^ Include the apk with the EXACT name/char case
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS := optional
LOCAL_PRIVILEGED_MODULE := true
# ^^ Tells if its in /system/app or /system/priv-app
# Don't include stock music app
#LOCAL_OVERRIDES_PACKAGES := Eleven
# tell dexopt not to try resigning the apks
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES :=
# ^^ This tells it to not decompile/recompile and try to sign the apk
include $(BUILD_PREBUILT)

#PRODUCT_COPY_FILES += \
#	packages/apps/TimeWeather/com.motorola.timeweatherwidget.library.jar:system/etc/framework/com.motorola.timeweatherwidget.library.jar \
#	packages/apps/TimeWeather/com.motorola.timeweatherwidget.library.xml:system/etc/permissions/com.motorola.timeweatherwidget.library.xml
