#!/system/bin/sh
# Re-strip any /data "update" overlay for the replaced package installer
# so the module's version stays active, even if OEM's App Market
# silently reinstalls its own component update in the background.

MODDIR="${0%/*}"
LOG="$MODDIR/newui_boot.log"
echo "==== $(date) ====" >> "$LOG"

echo "-- overlay mount check --" >> "$LOG"
mount | grep -E " /system(/| )" >> "$LOG" 2>&1

packages="com.miui.packageinstaller com.google.android.packageinstaller com.android.packageinstaller"

for pkg in $packages; do
    if pm list packages | grep -q "$pkg"; then
        path_before=$(pm path "$pkg" 2>&1)
        info_before=$(dumpsys package "$pkg" 2>/dev/null | grep -E "versionName|versionCode|codePath|installerPackageName" | tr -d ' ' | tr '\n' ';')
        result=$(pm uninstall-system-updates "$pkg" 2>&1)
        sleep 1
        path_after=$(pm path "$pkg" 2>&1)
        info_after=$(dumpsys package "$pkg" 2>/dev/null | grep -E "versionName|versionCode|codePath|installerPackageName" | tr -d ' ' | tr '\n' ';')
        echo "pkg=$pkg" >> "$LOG"
        echo "  uninstall-system-updates result: $result" >> "$LOG"
        echo "  path before: $path_before" >> "$LOG"
        echo "  path after:  $path_after" >> "$LOG"
        echo "  info before: $info_before" >> "$LOG"
        echo "  info after:  $info_after" >> "$LOG"
    fi
done

echo "==== done ====" >> "$LOG"

# One-time forced AOT compile (speed mode) - the module's apk ships without
# a baseline.prof (unlike the original stock apk), so without this the app
# runs interpreted/JIT on first launches, causing jank right when the
# install screen opens. Only needs to run once after install.
COMPILE_MARK="$MODDIR/.compiled"
if [ ! -f "$COMPILE_MARK" ]; then
    echo "-- forcing AOT compile (first boot after install) --" >> "$LOG"
    for pkg in $packages; do
        if pm list packages | grep -q "$pkg"; then
            compile_result=$(cmd package compile -m speed -f "$pkg" 2>&1)
            echo "  compile $pkg: $compile_result" >> "$LOG"
        fi
    done
    touch "$COMPILE_MARK"
fi
