#!/system/bin/sh
# Watches for the first ~3 minutes after boot and repeatedly strips
# any "system update" overlay that OEM self-repair mechanisms might
# push back for the replaced package installer.

MODDIR="${0%/*}"
LOG="$MODDIR/newui_service.log"
echo "==== service.sh started $(date) ====" >> "$LOG"
echo "-- overlay mount check --" >> "$LOG"
mount | grep -E " /system(/| )" >> "$LOG" 2>&1

packages="com.miui.packageinstaller com.google.android.packageinstaller com.android.packageinstaller"

# wait for boot to settle enough that pm responds
until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 1
done

i=0
while [ $i -lt 18 ]; do
    for pkg in $packages; do
        if pm list packages 2>/dev/null | grep -q "$pkg"; then
            path=$(pm path "$pkg" 2>&1)
            info=$(dumpsys package "$pkg" 2>/dev/null | grep -E "versionName|versionCode|codePath|installerPackageName" | tr -d ' ' | tr '\n' ';')
            result=$(pm uninstall-system-updates "$pkg" 2>&1)
            echo "[$i] pkg=$pkg path=$path info=$info result=$result" >> "$LOG"
        fi
    done
    sleep 10
    i=$((i + 1))
done

echo "==== service.sh finished $(date) ====" >> "$LOG"
