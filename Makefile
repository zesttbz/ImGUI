export THEOS=/var/luc1ner/theos


ARCHS = arm64 

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = zesttbz


zesttbz_FRAMEWORKS =  UIKit Foundation Security QuartzCore CoreGraphics CoreText  AVFoundation Accelerate GLKit SystemConfiguration GameController

zesttbz_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
zesttbz_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value

zesttbz_FILES =   ImGuiDrawView.mm $(wildcard Esp/*.mm)   $(wildcard Esp/*.m) $(wildcard KittyMemory/*.cpp) $(wildcard KittyMemory/*.mm) 



#zesttbz_LIBRARIES += substrate
# GO_EASY_ON_ME = 1

include $(THEOS_MAKE_PATH)/tweak.mk


