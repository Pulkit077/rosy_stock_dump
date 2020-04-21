#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32503118:d5a81072ddbe4c695b0c0bb3fe3dfea6b40cf468; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28294474:9c348523404ca3630899aa8bffc8974a908523b4 EMMC:/dev/block/bootdevice/by-name/recovery d5a81072ddbe4c695b0c0bb3fe3dfea6b40cf468 32503118 9c348523404ca3630899aa8bffc8974a908523b4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
