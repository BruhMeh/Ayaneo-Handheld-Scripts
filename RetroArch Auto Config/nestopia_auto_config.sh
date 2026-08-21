#!/system/bin/sh
# Create configuration directories for Nestopia
mkdir -p /storage/emulated/0/RetroArch/config/Nestopia 2>/dev/null

# Download Nestopia core from the official buildbot and extract it to the root protected folder
curl -sL -o /data/data/com.retroarch.aarch64/cores/Nestopia.zip https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/nestopia_libretro_android.so.zip
unzip -o /data/data/com.retroarch.aarch64/cores/Nestopia.zip -d /data/data/com.retroarch.aarch64/cores/ 2>/dev/null
chmod 755 /data/data/com.retroarch.aarch64/cores/nestopia_libretro_android.so 2>/dev/null
rm -f /data/data/com.retroarch.aarch64/cores/Nestopia.zip 2>/dev/null

curl -sL "https://github.com/RetroCrisis/Retro-Crisis-GDV-NTSC/releases/download/20260321/Retro.Crisis.GDV-NTSC.2026.03.21.zip" -o "/data/data/com.retroarch.aarch64/shaders/rc_shaders.zip" 
unzip -o "/data/user/0/com.retroarch.aarch64/shaders/rc_shaders.zip" -d "/data/data/com.retroarch.aarch64/"
chmod 755 -R "/data/data/com.retroarch.aarch64/shaders/"
rm -f "/data/user/0/com.retroarch.aarch64/shaders/rc_shaders.zip" 

#Inject Retro Crisis Snes Shader as core default
echo '#reference "../../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/retro crisis/1080p Flat/RC GDV-NTSC - NES - Clean.slangp"' > "/storage/emulated/0/RetroArch/config/Nestopia/Nestopia.slangp"

