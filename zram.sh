echo 1G > /sys/block/zram0/disksize
swapoff /dev/block/vnswap0
mkswap /dev/block/zram0
sleep 5
swapon /dev/block/zram0
chmod 644 /sys/module/zswap/parameters/enabled
echo N > /sys/module/zswap/parameters/enabled