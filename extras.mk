PRODUCT_PACKAGES += \
        MotMusic \
        TimeWeather
# Copy any files that are not the APK to out/ dir
PRODUCT_COPY_FILES += \
        vendor/extras/prebuilt/apps/TimeWeather/com.motorola.timeweatherwidget.library.jar:system/framework/com.motorola.timeweatherwidget.library.jar \
        vendor/extras/prebuilt/apps/TimeWeather/com.motorola.timeweatherwidget.library.xml:system/etc/permissions/com.motorola.timeweatherwidget.library.xml \
        vendor/extras/prebuilt/apps/MotMusic/com.moto.music.xml:system/etc/permissions/com.moto.music.xml
