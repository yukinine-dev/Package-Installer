packages="com.miui.packageinstaller com.google.android.packageinstaller com.android.packageinstaller"

mods_center() {
    ui_print "
             __  ___        __  
            /  |/  /__  ___/ /__
           / /|_/ / _ \/ _  (_-
          /_/  /_/\___/\_,_/___/
            _____         __         
           / ___/__ ___  / /____ ____
          / /__/ -_) _ \/ __/ -_) __/
          \___/\__/_//_/\__/\__/_/   
"
}

check_support() {
    android_ver=$(getprop ro.build.version.release)
    sdk_ver=$(getprop ro.build.version.sdk)
    ui_print "- Checking support..."
    if [ -z "$sdk_ver" ] || [ "$sdk_ver" -lt 31 ]; then
        abort "- Your Android version is not supported (requires Android 12+)"
    fi
}

uninstall_updates() {
    ui_print "- Uninstalling installer updates..."
    for pkg in $packages; do
        pm uninstall-system-updates $pkg >/dev/null 2>&1
    done
}

get_package_info() {
    pkg=$1
    installed=$(pm list packages | grep -q $pkg && echo true || echo false)
    path=$(pm path $pkg | sed 's/package://')
    folder=$(dirname "$path")
    apkname=$(basename "$path")
}

find_replace_folder() {
    local search_dir="/data/adb/modules/$MODID"
    local replace_file=$(find "$search_dir" -name ".replace" -type f)
    if [ -n "$replace_file" ]; then
        local replace_folder=$(dirname "$replace_file")
        replace_folder=${replace_folder#$search_dir}
        if [ -z "$replace_folder" ]; then
            echo "$1"
        else
            echo "$replace_folder"
        fi
    else
        echo "$1"
    fi
}

install_package() {
    installer=$1
    replace_folder=$2
    orig_apkname=$3

    ui_print "- Replacing with $installer"

    replace_folder=$(find_replace_folder "$replace_folder")

    # The target dir MUST be created at the exact same path under $MODPATH
    # as the real /system path we're opaque-replacing (see REPLACE below) -
    # otherwise KernelSU/overlayfs has nothing to mount in its place and the
    # original stock apk stays untouched.
    target_dir="$MODPATH$replace_folder"
    mkdir -p "$target_dir"
    cp -f "$MODPATH/files/${installer}.apk" "$target_dir/$orig_apkname"

    REPLACE="
    $replace_folder
    "
}

check_metamodule() {
    local mm_found=false
    for d in /data/adb/modules/*; do
        [ -f "$d/module.prop" ] || continue
        grep -q "^metamodule=1" "$d/module.prop" 2>/dev/null && mm_found=true && break
    done
    if [ "$mm_found" = "false" ]; then
        ui_print "- WARNING: no metamodule (e.g. meta-overlayfs) detected"
        ui_print "- /system changes may NOT be mounted without one"
        ui_print "- Install meta-overlayfs from KernelSU manager if the fix doesn't apply"
    fi
}

add_installer() {
    ui_print "- Installing files for Android $android_ver"
    
    check_metamodule
    uninstall_updates
    
    for pkg in $packages; do
        get_package_info "$pkg"
        if [ "$installed" = "true" ]; then
            if [[ "$path" == *product* ]]; then
                partition=/system/product
                replace_folder="/system$folder"
            elif [[ "$path" == *system_ext* ]]; then
                partition=/system/system_ext
                replace_folder="/system$folder"
            elif [[ "$path" == *vendor* ]]; then
                partition=/system/vendor
                replace_folder="/system$folder"
            elif [[ "$path" == *system* ]]; then
                partition=/system
                replace_folder="$folder"            
            fi
            
            case $pkg in
                com.miui.packageinstaller) install_package "MiuiPackageInstaller" "$replace_folder" "$apkname" ;;
                com.google.android.packageinstaller) install_package "GooglePackageInstaller" "$replace_folder" "$apkname" ;;
                com.android.packageinstaller) install_package "AndroidPackageInstaller" "$replace_folder" "$apkname" ;;
            esac
            return
        fi
    done
    
    abort "- No supported package installer found"
}

clean_files() {
    rm -rf "$MODPATH/addon" "$MODPATH/files" 2>/dev/null
    rm -f "$MODPATH/install.sh" 2>/dev/null
    rm -rf /data/resource-cache/* /data/system/package_cache/* 2>/dev/null
    set_perm "$MODPATH/boot-completed.sh" 0 0 0755
    set_perm "$MODPATH/service.sh" 0 0 0755
}

run_install() {
    mods_center
    check_support
    add_installer
    clean_files
}

run_install