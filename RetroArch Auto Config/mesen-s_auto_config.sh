# Create configuration directories for Mesen-S
mkdir -p /sdcard/RetroArch/config/Mesen-S 2>/dev/null

# Download Mesen-S core from the official buildbot and extract it to the root protected folder
curl -sL -o /data/data/com.retroarch.aarch64/cores/Mesen-S.zip https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/mesen-s_libretro_android.so.zip
unzip -o /data/data/com.retroarch.aarch64/cores/Mesen-S.zip -d /data/data/com.retroarch.aarch64/cores/ 2>/dev/null
chmod 755 /data/data/com.retroarch.aarch64/cores/mesen-s_libretro_android.so 2>/dev/null
rm -f /data/data/com.retroarch.aarch64/cores/Mesen-S.zip 2>/dev/null

curl -sL "https://github.com/RetroCrisis/Retro-Crisis-GDV-NTSC/releases/download/20260321/Retro.Crisis.GDV-NTSC.2026.03.21.zip" -o "/data/user/0/com.retroarch.aarch64/shaders/rc_shaders.zip" 
unzip -u "/data/user/0/com.retroarch.aarch64/shaders/rc_shaders.zip" -d "/data/user/0/com.retroarch.aarch64/"
chmod 755 -R "/data/user/0/com.retroarch.aarch64/shaders/"
rm -f "/data/user/0/com.retroarch.aarch64/shaders/rc_shaders.zip" 

#Inject Retro Crisis Snes Shader as core default
echo '#reference "../../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/retro crisis/1080p Flat/RC GDV-NTSC - SNES - Clean.slangp"' > "/storage/emulated/0/RetroArch/config/Mesen-S/Mesen-S.slangp"

