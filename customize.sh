# Installer
SKIPUNZIP=1
TERMUX=1
CALLBACK=6
unzip -qo "$ZIPFILE" "function.sh" "$TMPDIR"
. "$TMPDIR/function.sh"
dezip "$ZIPFILE" "system.prop" "$MODPATH"
dezip "$ZIPFILE" "system.prop" "$MAINPATH"
dezip "$ZIPFILE" "system/*" "$MODPATH"
dezip "$ZIPFILE" "system/*" "$MAINPATH"
dezip "$ZIPFILE" "iUnlocker-libraries.so/*" "$MDIR"
dezip "$ZIPFILE" "lib-daemon" "$MODPATH"
dezip "$ZIPFILE" "lib-iunlocker" "$MODPATH"
dezip "$ZIPFILE" "iUnlocker-Sapphire" "$MODPATH"
dezip "$ZIPFILE" "customize.sh" "$MODPATH"
dezip "$ZIPFILE" "libraries.zip" "$MODPATH"
dezip "$ZIPFILE" "iUnlocker-fuse" "$MODPATH"
dezip "$ZIPFILE" "module.prop" "$MAINPATH"
dezip "$ZIPFILE" "module.prop" "$MODPATH"
dezip "$ZIPFILE" "lib-taylo" "$MODPATH"
dezip "$ZIPFILE" "lib-check" "$MODPATH"
dezip "$ZIPFILE" "post-fs-data.sh" "$MODPATH"
dezip "$ZIPFILE" "iUnlocker-ES.bin" "$MODPATH"
dezip "$ZIPFILE" "post-fs-data.sh" "$MAINPATH"
dezip "$ZIPFILE" "service.sh" "$MODPATH"
dezip "$ZIPFILE" "uninstall.sh" "$MODPATH"
dezip "$ZIPFILE" "uninstaller" "$MODPATH"
set_perm $MODPATH/lib-check
run lib-check
if [ -f $MODPATH/out ]; then
abort
fi
unzip -qo "$ZIPFILE" "files/$ABI" "$TMPDIR"
if [ "$ARCH" = "arm" ] ; then
  unzip -qo "$ZIPFILE" "files/$ARCH/*" -d "$MODPATH"; mv $MODPATH/files/$ARCH/* $MODPATH/system/bin; rm -rf $MODPATH/files
elif [ "$ARCH" = "arm64" ]; then
  unzip -qo "$ZIPFILE" "files/$ARCH/*" -d "$MODPATH"; mv $MODPATH/files/$ARCH/* $MODPATH/system/bin; rm -rf $MODPATH/files
elif [ "$ARCH" = "x86" ]; then
  unzip -qo "$ZIPFILE" "files/$ARCH/*" -d "$MODPATH"; mv $MODPATH/files/$ARCH/* $MODPATH/system/bin; rm -rf $MODPATH/files
elif [ "$ARCH" = "x64" ]; then
  unzip -qo "$ZIPFILE" "files/$ARCH/*" -d "$MODPATH"; mv $MODPATH/files/$ARCH/* $MODPATH/system/bin; rm -rf $MODPATH/files
fi
mv $MODPATH/system/bin/busybox $MODPATH/system/bin/wget

     if [ "$MIN_ANDROID_API" = "$API" ]; then
      cout "Android version: $API\n"
      elif [ "$MAX_ANDROID_API" = "$API" ]; then
       cout "Android version: $API\n"
      elif [ "$API" = 31 ]; then
       cout "Android version: $API\n"
       else
      cout_abort "unsupported android version $API\n"
    fi
cout "Using: $ARCH,ON: $ABI,SDK: $API\n"
chmod 777 $MODPATH/*
set_perm "$MDIR/iUnlocker-libraries.so/libV9y_7V2.so"
ln -s "$MDIR/iUnlocker-libraries.so/libV9y_7V2.so" "$MDIR/iUnlocker-libraries.so/libV9y_7V2.so.1.2.0.9.2.4"
config path=/../../system-patch
config proc=$MODDIR
config infinity=512
config JUNK=null
config IS64=$IS64BIT
config Arch=$ARCH
config ROOT_VER=$MAGISK_VER
config SDM=yes
config pROOT=false
config fps_limt=144fps
config FRAME=2400x1080
config isresMAX=no
config ADRENO='Adreno (TM) 660'
fstop com.termux
TERMUXL; HTP; HSR $CEV
run iUnlocker-Sapphire
chmod 777 $MODPATH/system/bin/*
chmod 777 $MODPATH/*
set_perm $MODPATH/iUnlocker-Sapphire
chmod 777 $MODPATH/lib-iunlocker