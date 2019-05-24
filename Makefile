ARCHES = arm64 arm64e
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AvengersBattle
AvengersBattle_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

BUNDLE_NAME = AvengersBattleBundle
AvengersBattleBundle_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
include $(THEOS)/makefiles/bundle.mk