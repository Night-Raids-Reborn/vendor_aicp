ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.build.selinux=1

# Storage manager
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.storage_manager.enabled=true

# Disable rescue party
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.disable_rescue=true

# whitelist packages for location providers not in system
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.services.whitelist.packagelist=com.google.android.gms

# Spoof fingerprint for Google Play Services and SafetyNet
ifeq ($(PRODUCT_OVERRIDE_GMS_FINGERPRINT),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.build.gms_fingerprint=google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.build.gms_fingerprint=$(PRODUCT_OVERRIDE_GMS_FINGERPRINT)
endif

