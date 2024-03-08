#!/system/bin/sh

# Run fstrim on /data partition
/sbin/.magisk/busybox/fstrim -v /data

# Run fstrim on /cache partition
/sbin/.magisk/busybox/fstrim -v /cache

# Run fstrim on /system partition
/sbin/.magisk/busybox/fstrim -v /system