export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:8.1:8.1
export SDKVERSION=8.1

include theos/makefiles/common.mk

TWEAK_NAME = disableinstantmute
disableinstantmute_FILES = Tweak.xm
disableinstantmute_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
