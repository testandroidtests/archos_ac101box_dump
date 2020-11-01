#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:9093376:22ee232937edeee320929a474e0272097c1ebef4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:8126720:abd6063427f5af41fc5e6ea6c771ae29b1d7e6a9 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 22ee232937edeee320929a474e0272097c1ebef4 9093376 abd6063427f5af41fc5e6ea6c771ae29b1d7e6a9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
