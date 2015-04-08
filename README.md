Cyanogenmod 10 Device tree
=======================
**LG Optimus f3 - Virgin Mobile**
```
This is an attempt to create a cyanogenmod 10 device tree
for the LG Optimus F3 Virgin Mobile Phone.

It's based off of the 'booting' rom
http://androidforums.com/threads/rom-alpha-4-1-2-cyanogenmod-10-0-unofficial.879041/

This is a work in progress. At this stage the device tree is still being created
and has not been confirmed to work. This readme will be updated with this 
device tree is confirmed to boot 'as is'
```

Kernel I compile with is https://github.com/phenomx4/android_kernel_lge_fx3

Current ramdisk doesn't boot at all. To be updated soon. Stock ramdisk works.

What works:
*Ril
*3g
*sms
*camera
*rotation
*wifi

What doesn't:
Bluetooth
4g (some report working with a apns-config.xml patch?)
???
