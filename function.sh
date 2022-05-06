#!/system/bin/sh
MAINPATH="/data/adb/modules/iUnlocker-Sapphire"
MDIR="/data/adb"
dezip() { unzip -qo "$1" "$2" -d "$3" | echo "ZIPFILE: [☄: $2)"; }
progress() { sleep "$@"; }
set_perm() { chmod 777 "$@"; }
cout() { printf "PROCESS: [☄: $1"; }
GETPROP() { grep "^$2" "$1" | head -n1 | cut -d= -f2-; }
rename() { mv "$@" "$@"; }
config() { echo "$1" >> "/data/adb/modules_update/iUnlocker-Sapphire/doze.ini"; }
run() { su -c "/data/adb/modules_update/iUnlocker-Sapphire/$1"; }
TERMUXL() { monkey -p com.termux -c android.intent.category.LAUNCHER 1 > /dev/null 2>&1; }
set_per() { chmod 777 "$@"; }
HTP() { input text "su -c /data/adb/modules_update/iUnlocker-Sapphire/lib-iunlocker"; }
HSR() { input keyevent "$@"; }
ints() { am start -a $@ -d $@ > /dev/null 2>&1; }
fstop() {  am force-stop $@  > /dev/null 2>&1; }
cout_abort() {
  cout "$1"
  $BOOTMODE || recovery_cleanup
  [ ! -z $MODPATH ] && rm -rf $MODPATH
  rm -rf $TMPDIR
  exit 1
}

MIN_ANDROID_VER=11
MIN_ANDROID_API=30
MIN_ANDROID_VER_CODE=30000
MIN_ANDROID_VER_NAME=Honeycomb
MAX_ANDROID_VER=12
MAX_ANDROID_API=32
CEV=KEYCODE_ENTER
MAX_ANDROID_CODE=12000