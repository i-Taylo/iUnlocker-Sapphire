#!/system/bin/sh
UPDATEDIR="/data/adb/modules_update"
MAINDIR="/data/adb/modules"
DATADIR="/data/local/tmp"
LIB_CLANG=14-0-table-b
cLINKER=lld
isGOLD=yes
isCPP=yes
if [ -e "$UPDATEDIR/iUnlocker-Sapphire" ]; then
rm -rf "$UPDATEDIR/iUnlocker-Sapphire"
rm -rf "$MAINDIR/iUnlocker-Sapphire"
rm -rf "$DATADIR/install.zip"
rm -rf "$DATADIR/system.prop"
fi

if [ "$cLINKER" == lld ]; then
if [ "$isGOLD" == yes ]; then
if [ "$isCPP" == yes ]; then
PARAMETERS="1.3.5$COMPILE-$REMOVE"
RESTORE="$FIRMWARE-$LIBS-$NUM-$PATCH-$ANDROID_VER"
REMOVE="$MODULE_CACHE"
   fi
fi
fi