ARCHS = armv7 arm64
include theos/makefiles/common.mk

BUNDLE_NAME = SimpleCentersPrefs
SimpleCentersPrefs_FILES = SimpleCentersPrefs.mm NCSettings.mm CCSettings.mm
SimpleCentersPrefs_INSTALL_PATH = /Library/PreferenceBundles
SimpleCentersPrefs_FRAMEWORKS = Foundation UIKit
SimpleCentersPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SimpleCenters.plist$(ECHO_END)
