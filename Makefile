TARGET := macosx:clang:latest:15.0


ARCHS = arm64e arm64 x86_64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = launchbad

launchbad_FILES = Tweak.x
launchbad_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
