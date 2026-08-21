#!/system/bin/sh
#Download and install retro arch nightly
rm -rf /data/local/tmp/retroarch_install
mkdir -p /data/local/tmp/retroarch_install
curl -sL "https://buildbot.libretro.com/nightly/android/RetroArch_aarch64.apk" -o "/data/local/tmp/retroarch_install/retroarch.apk"
pm install -r "/data/local/tmp/retroarch_install/retroarch.apk"

#Create the necessary configuration folders
mkdir -p /data/data/com.retroarch.aarch64/assets
mkdir -p /data/data/com.retroarch.aarch64/info
mkdir -p /data/data/com.retroarch.aarch64/autoconfig
mkdir -p /data/data/com.retroarch.aarch64/cheats
mkdir -p /data/data/com.retroarch.aarch64/database/rdb
mkdir -p /data/data/com.retroarch.aarch64/overlays
mkdir -p /data/data/com.retroarch.aarch64/shaders/shaders_glsl
mkdir -p /data/data/com.retroarch.aarch64/shaders/shaders_slang

#Download the last assests, shaders, cheats, overlays and core infos.
curl -sL "https://buildbot.libretro.com/assets/frontend/assets.zip" -o "/data/local/tmp/retroarch_install/assets.zip"
unzip -qo "/data/local/tmp/retroarch_install/assets.zip" -d "/data/data/com.retroarch.aarch64/assets"
curl -sL "https://buildbot.libretro.com/assets/frontend/info.zip" -o "/data/local/tmp/retroarch_install/info.zip"
unzip -qo "/data/local/tmp/retroarch_install/info.zip" -d "/data/data/com.retroarch.aarch64/info"
curl -sL "https://buildbot.libretro.com/assets/frontend/autoconfig.zip" -o "/data/local/tmp/retroarch_install/autoconfig.zip"
unzip -qo "/data/local/tmp/retroarch_install/autoconfig.zip" -d "/data/data/com.retroarch.aarch64/autoconfig"
curl -sL "https://buildbot.libretro.com/assets/frontend/cheats.zip" -o "/data/local/tmp/retroarch_install/cheats.zip"
unzip -qo "/data/local/tmp/retroarch_install/cheats.zip" -d "/data/data/com.retroarch.aarch64/cheats"
curl -sL "https://buildbot.libretro.com/assets/frontend/database-rdb.zip" -o "/data/local/tmp/retroarch_install/database-rdb.zip"
unzip -qo "/data/local/tmp/retroarch_install/database-rdb.zip" -d "/data/data/com.retroarch.aarch64/database/rdb"
curl -sL "https://buildbot.libretro.com/assets/frontend/overlays.zip" -o "/data/local/tmp/retroarch_install/overlays.zip"
unzip -qo "/data/local/tmp/retroarch_install/overlays.zip" -d "/data/data/com.retroarch.aarch64/overlays"
curl -sL "https://buildbot.libretro.com/assets/frontend/shaders_glsl.zip" -o "/data/local/tmp/retroarch_install/shaders_glsl.zip"
unzip -qo "/data/local/tmp/retroarch_install/shaders_glsl.zip" -d "/data/data/com.retroarch.aarch64/shaders/shaders_glsl"
curl -sL "https://buildbot.libretro.com/assets/frontend/shaders_slang.zip" -o "/data/local/tmp/retroarch_install/shaders_slang.zip"
unzip -qo "/data/local/tmp/retroarch_install/shaders_slang.zip" -d "/data/data/com.retroarch.aarch64/shaders/shaders_slang"

#Make sure RetroArch has permision on its own folders.
chmod -R 777 /data/data/com.retroarch.aarch64
rm -rf /data/local/tmp/retroarch_install