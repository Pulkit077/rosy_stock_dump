#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28679502:165a23d1b0b507db5671e9eda54e996bcbd7c036; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27229514:ed4ab17f17f428d11e9262f2fb480d0891f8e197 EMMC:/dev/block/bootdevice/by-name/recovery 165a23d1b0b507db5671e9eda54e996bcbd7c036 28679502 ed4ab17f17f428d11e9262f2fb480d0891f8e197:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
