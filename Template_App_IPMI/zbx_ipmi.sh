#!/bin/bash

usage () {
cat <<EOF
temp ---------- Ambient Temp
avgpower ------ Avg Power
voltage3 ------ Planar 3.3V
voltage5 ------ Planar 5V
voltage12 ----- Planar 12V
voltageBat ---- Planar VBAT
fan1 ---------- Fan 1A Tach
fan2 ---------- Fan 1B Tach
fan3 ---------- Fan 2A Tach
fan4 ---------- Fan 2B Tach
fan5 ---------- Fan 3A Tach
fan6 ---------- Fan 3B Tach
EOF
}

case $1 in
temp)
ipmitool sensor reading "Ambient Temp";
;;
avgpower)
ipmitool sensor reading "Avg Power"
;;
voltage3)
ipmitool sensor reading "Planar 3.3V"
;;
voltage5)
ipmitool sensor reading "Planar 5V"
;;
voltage12)
ipmitool sensor reading "Planar 12V"
;;
voltageBat)
ipmitool sensor reading "Planar VBAT"
;;
fan1)
ipmitool sensor reading "Fan 1A Tach"
;;
fan2)
ipmitool sensor reading "Fan 1B Tach"
;;
fan3)
ipmitool sensor reading "Fan 2A Tach"
;;
fan4)
ipmitool sensor reading "Fan 2B Tach"
;;
fan5)
ipmitool sensor reading "Fan 3A Tach"
;;
fan6)
ipmitool sensor reading "Fan 3B Tach"
;;
*)
usage
;;
esac
