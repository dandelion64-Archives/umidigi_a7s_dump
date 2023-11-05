#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:16777216:f64ecd8481449a55e64498902fd15469e657f4be; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:16777216:a040f8f12660254f243f8692a9096febec2ee2b0 \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:16777216:f64ecd8481449a55e64498902fd15469e657f4be && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
