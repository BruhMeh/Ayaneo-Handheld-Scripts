#!/system/bin/sh
# Create configuration directories for Gambatte
mkdir -p /storage/emulated/0/RetroArch/config/Gambatte 2>/dev/null

# Download Gambatte core from the official buildbot and extract it to the root protected folder
curl -sL -o /data/data/com.retroarch.aarch64/cores/gambatte_temp.zip https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/gambatte_libretro_android.so.zip
unzip -o /data/data/com.retroarch.aarch64/cores/gambatte_temp.zip -d /data/data/com.retroarch.aarch64/cores/ 2>/dev/null
chmod 755 /data/data/com.retroarch.aarch64/cores/gambatte_libretro_android.so 2>/dev/null
rm -f /data/data/com.retroarch.aarch64/cores/gambatte_temp.zip 2>/dev/null

# Inject Gambatte core options (Opting for the profile with "accurate" color correction)

echo -e 'gambatte_audio_resampler = "sinc"' > /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_dark_filter_level = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_bootloader = "enabled"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_colorization = "auto"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_hwmode = "Auto"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_internal_palette = "GBC - Pastel Mix"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_mode = "Not Connected"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_port = "56400"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_1 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_10 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_11 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_12 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_2 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_3 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_4 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_5 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_6 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_7 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_8 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_link_network_server_ip_9 = "0"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_palette_pixelshift_1 = "PixelShift 01 - Arctic Green"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_palette_twb64_1 = "TWB64 001 - Aqours Blue"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_palette_twb64_2 = "TWB64 101 - 765PRO Pink"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gb_palette_twb64_3 = "TWB64 201 - DMG-GOLD"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gbc_color_correction = "always"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gbc_color_correction_mode = "accurate"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_gbc_frontlight_position = "central"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_mix_frames = "lcd_ghosting"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_rumble_level = "10"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_show_gb_link_settings = "disabled"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_turbo_period = "4"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt
echo -e 'gambatte_up_down_allowed = "disabled"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.opt


# Inject lcd-grid-v2 and Pixel Transparency Shaders Preset and best configurations

echo -e 'shaders = "2"' > /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'shader0 = "../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/handheld/shaders/lcd-cgwg/lcd-grid-v2.slang"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'alias0 = ""' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'wrap_mode0 = "clamp_to_border"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'mipmap_input0 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'filter_linear0 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'float_framebuffer0 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'srgb_framebuffer0 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_type_x0 = "viewport"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_x0 = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_type_y0 = "viewport"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_y0 = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'shader1 = "../../../../../../data/user/0/com.retroarch.aarch64/shaders/shaders_slang/handheld/shaders/pixel_transparency/pixel_transparency.slang"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'alias1 = ""' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'wrap_mode1 = "clamp_to_border"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'mipmap_input1 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'filter_linear1 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'float_framebuffer1 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'srgb_framebuffer1 = "false"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_type_x1 = "viewport"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_x1 = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_type_y1 = "viewport"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'scale_y1 = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'RSUBPIX_R = "0.800000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'GSUBPIX_G = "0.800000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'BSUBPIX_B = "0.800000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'gain = "1.600000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'gamma = "2.200000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'blacklevel = "0.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'SECTION1 = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_PALETTE = "2.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_BACKING_BRIGHTNESS = "0.500000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_POLARIZER = "0.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_SATURATION = "1.250000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_HIGHLIGHTS = "0.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'SECTION2 = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_WHITE_BOOST = "1.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_SHADOW_MOTION = "0.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_SHADOW_OFFSET_X = "2.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_SHADOW_OFFSET_Y = "2.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
echo -e 'PT_ACCEL_ENABLE = "0.000000"' >> /storage/emulated/0/RetroArch/config/Gambatte/Gambatte.slangp
