#!/system/bin/sh
# Create configuration directories for SameBoy
mkdir -p /storage/emulated/0/RetroArch/config/SameBoy 2>/dev/null

# Download SameBoy core from the official buildbot and extract it to the root protected folder
curl -sL -o /data/data/com.retroarch.aarch64/cores/sameboy_temp.zip https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/sameboy_libretro_android.so.zip
unzip -o /data/data/com.retroarch.aarch64/cores/sameboy_temp.zip -d /data/data/com.retroarch.aarch64/cores/ 2>/dev/null
chmod 755 /data/data/com.retroarch.aarch64/cores/sameboy_libretro_android.so 2>/dev/null
rm -f /data/data/com.retroarch.aarch64/cores/sameboy_temp.zip 2>/dev/null

# Inject SameBoy core options (Opting for the profile with "accurate" color correction)
echo -e 'sameboy_audio_interference = "0"' > /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_audio_interference_1 = "0"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_audio_interference_2 = "0"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_audio_output = "Game Boy #1"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_auto_sgb_model = "Super Game Boy"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_auto_sgb_model_1 = "Super Game Boy"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_auto_sgb_model_2 = "Super Game Boy"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_border = "Super Game Boy only"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_color_correction_mode = "accurate"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_color_correction_mode_1 = "emulate hardware"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_color_correction_mode_2 = "emulate hardware"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_high_pass_filter_mode = "accurate"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_high_pass_filter_mode_1 = "accurate"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_high_pass_filter_mode_2 = "accurate"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_light_temperature = "0"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_light_temperature_1 = "0"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_light_temperature_2 = "0"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_link = "enabled"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_model = "Auto"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_model_1 = "Auto"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_model_2 = "Auto"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_mono_palette = "greyscale"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_mono_palette_1 = "greyscale"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_mono_palette_2 = "greyscale"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_rtc = "sync to system clock"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_rumble = "rumble-enabled games"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_rumble_1 = "rumble-enabled games"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_rumble_2 = "rumble-enabled games"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt
echo -e 'sameboy_screen_layout = "top-down"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.opt


# Inject lcd-grid-v2 and Pixel Transparency Shaders Preset and best configurations
echo -e 'shaders = "2"' > /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'shader0 = "../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/handheld/shaders/lcd-cgwg/lcd-grid-v2.slang"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'alias0 = ""' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'wrap_mode0 = "clamp_to_border"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'mipmap_input0 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'filter_linear0 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'float_framebuffer0 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'srgb_framebuffer0 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_type_x0 = "viewport"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_x0 = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_type_y0 = "viewport"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_y0 = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'shader1 = "../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/handheld/shaders/pixel_transparency/pixel_transparency.slang"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'alias1 = ""' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'wrap_mode1 = "clamp_to_border"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'mipmap_input1 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'filter_linear1 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'float_framebuffer1 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'srgb_framebuffer1 = "false"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_type_x1 = "viewport"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_x1 = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_type_y1 = "viewport"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'scale_y1 = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'RSUBPIX_R = "0.800000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'GSUBPIX_G = "0.800000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'BSUBPIX_B = "0.800000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'gain = "1.600000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'gamma = "2.200000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'blacklevel = "0.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'SECTION1 = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_PALETTE = "2.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_BACKING_BRIGHTNESS = "0.500000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_POLARIZER = "0.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_SATURATION = "1.250000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_HIGHLIGHTS = "0.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'SECTION2 = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_WHITE_BOOST = "1.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_SHADOW_MOTION = "0.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_SHADOW_OFFSET_X = "2.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_SHADOW_OFFSET_Y = "2.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp
echo -e 'PT_ACCEL_ENABLE = "0.000000"' >> /storage/emulated/0/RetroArch/config/SameBoy/SameBoy.slangp