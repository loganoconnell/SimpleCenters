ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = SimpleCenters
SimpleCenters_FILES = Tweak.xm
SimpleCenters_FRAMEWORKS = Foundation UIKit QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk


SUBPROJECTS += simplecentersprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
