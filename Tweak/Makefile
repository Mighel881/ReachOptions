ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ReachOptions

$(TWEAK_NAME)_FILES = ReachOptions.x UIDevice+notchedDevice.m $(wildcard Actions/*.x)
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
