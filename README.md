Cyanogenmod 10.0 (Android 4.1.2, JZO54K) Device tree
=======================
**LG Optimus f3 - T-Mobile/MetroPCS**
```
This is an attempt to create a fully functional CyanogenMod 10 device tree
for the LG Optimus F3 LG-P659 (T-Mobile/MetroPCS).

It's based off of the 'booting' rom
http://androidforums.com/threads/rom-alpha-4-1-2-cyanogenmod-10-0-unofficial.879041/

This is a work in progress. At this stage, the device tree boots, but does not have
complete functionality. This readme will be updated when this device tree has been
confirmed to work with all features enabled.
```

The jellybean branch of the CyanogenMod source tree will fail to fetch, due to some French company full of employees that have had lobotomies requesting a takedown of references to SVOX...

Try this instead: https://github.com/Inno3D/android_CyanogenMod/tree/jellybean

To add the device tree to your android source tree, use this local manifest:
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
        <remote name="fx3" fetch="https://github.com/" />
        <project path="device/lge/fx3" name="daemon32/android_lge_fx3.git" remote="fx3" revision="master" />
</manifest>
```
And place it in <croot>/.repo/local_manifests/cm_fx3.xml


The kernel I compile with is at https://github.com/phenomx4/android_kernel_lge_fx3

The current ramdisk doesn't boot at all. Will be updated soon. Use the stock ramdisk until then.

What works:
```
*front camera
*rotation
*wifi (you need to push connect on your wifi network after booting)
*gps
```

What doesn't:
```
3g
Ril
sms
Bluetooth
4g (some reported working with a apns-config.xml patch on Virgin Mobile?)
???
```

What kinda works:
```
back camera (it's green for some reason!)
```

```
Thanks xclusive36 for your effort putting this device tree together!
Thanks phenomx4 for your work creating proper device tree
Thanks masterdebugger for your excellent digging
Thanks sandix for your debugging and all of your wonderful suggestions
```
