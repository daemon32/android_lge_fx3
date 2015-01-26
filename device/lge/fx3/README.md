CyanogenMod 10 for LG720 / Fx3
=======================================

CyanogenMod10 device tree for the Virgin Mobile F3 (fx3)

Build requirements:
* device/lge/msm8960-common, Branch Master (included)
* vendor/lge/fx3, Branch Master (included)

Working:
* Boots (Need to copy lib file from current cm10 rom, and also copy boot_bumped.img from $OUT folder into compiled rom.
* Audio
* Wifi
* ADB
* Ril 1x & 3G works when it wants to, have to play around with preferred network mode settings
* NFC??? it turns on.

Known issues:
* External SDCard fails to mount
* Vibration 
* GPS

