#!/system/bin/sh

#changing current to 1600mA
echo 1600 > /sys/devices/battery/power_supply/battery/batt_tune_fast_charge_current
echo 1600 > /sys/devices/battery/power_supply/battery/batt_tune_intput_charge_current

#for background running
while true; do
    temp=$(cat /sys/class/power_supply/battery/temp)
            temp_celsius=$((temp / 10))
        #fast charge only above 35 C
            if [ $temp_celsius -le 35 ]; then
                su -c echo 100 > /sys/devices/battery/power_supply/battery/siop_level
            else
                su -c echo 0 > /sys/devices/battery/power_supply/battery/siop_level
            fi
    sleep 30
done