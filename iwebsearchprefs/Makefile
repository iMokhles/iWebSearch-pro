include theos/makefiles/common.mk

BUNDLE_NAME = iWebSearchPrefs
iWebSearchPrefs_FILES = iWebSearchPrefs.mm
iWebSearchPrefs_INSTALL_PATH = /Library/PreferenceBundles
iWebSearchPrefs_FRAMEWORKS = UIKit
iWebSearchPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/iWebSearchPrefs.plist$(ECHO_END)
