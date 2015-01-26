CyanogenMod 10 for LG720 / Fx3
=======================================

CyanogenMod10 device tree for the fx3 was based off 985hPaKicK's (LG Optimus LTE2). It has been edited to fit the needs of the LG Optimus F3

Build requirements:
* device/lge/msm8960-common, Branch Master
* vendor/lge/fx3, Branch Master

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

