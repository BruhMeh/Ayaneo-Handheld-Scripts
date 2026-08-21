#!/system/bin/sh
echo "Creating config directories for mGBA..."
mkdir -p /sdcard/RetroArch/config/mGBA/

echo "Downloading and extracting mGBA core to RetroArch system directory"
curl -L -o /sdcard/Download/mgba_core.zip https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/mgba_libretro_android.so.zip
unzip -o /sdcard/Download/mgba_core.zip -d /data/data/com.retroarch.aarch64/cores/
chmod 755 /data/data/com.retroarch.aarch64/cores/mgba_libretro_android.so
rm /sdcard/Download/mgba_core.zip


echo "Ensuring options file exists to prevent sed errors..."
touch /sdcard/RetroArch/config/mGBA/mGBA.opt

echo "Removing existing color and blending options to avoid duplicates..."
sed -i '/^mgba_color_correction/d' /sdcard/RetroArch/config/mGBA/mGBA.opt
sed -i '/^mgba_interframe_blending/d' /sdcard/RetroArch/config/mGBA/mGBA.opt

echo "Injecting optimal LCD Ghosting blending (Fixes flickering)..."
echo 'mgba_interframe_blending = "Smart"' >> /sdcard/RetroArch/config/mGBA/mGBA.opt

echo "Creating Core Preset to auto-load lcd-grid-v2 + sp101-color shader..."
echo '#reference "../../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/presets/handheld-plus-color-mod/lcd-grid-v2-sp101-color.slangp"' > /sdcard/RetroArch/config/mGBA/mGBA.slangp