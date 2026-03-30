ARCHS = arm64e
TARGET = iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES = WeChat

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LiquidTabBar

$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_FRAMEWORKS = UIKit
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_INSTALL_PATH = /var/jb/Library/MobileSubstrate/DynamicLibraries

include $(THEOS_MAKE_PATH)/tweak.mk
