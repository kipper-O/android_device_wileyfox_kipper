# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(TARGET_BOARD_AUTO),true)
  ifneq ($(filter msm8916,$(TARGET_BOARD_PLATFORM)),)
     ifneq ($(BUILD_TINY_ANDROID),true)
       include $(call all-subdir-makefiles)
     endif
  endif
endif
