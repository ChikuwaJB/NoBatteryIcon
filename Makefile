ARCHS = armv7 arm64
THEOS_PACKAGE_DIR_NAME = Packages
GO_EASY_ON_ME = 1
include theos/makefiles/common.mk

TWEAK_NAME = NoBatteryIcon
NoBatteryIcon_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
