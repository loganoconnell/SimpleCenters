ARCHS = armv7 arm64
THEOS_BUILD_DIR = Packages
include theos/makefiles/common.mk

TWEAK_NAME = SimpleCenters
SimpleCenters_FILES = Tweak.xm
SimpleCenters_LIBRARIES = substrate
SimpleCenters_FRAMEWORKS = Foundation UIKit QuartzCore
SimpleCenters_LDFLAGS += -Wl,-segalign,4000
SimpleCenters_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += simplecentersprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
