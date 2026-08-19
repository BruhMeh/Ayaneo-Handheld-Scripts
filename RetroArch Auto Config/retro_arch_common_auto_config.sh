# RetroArch most common configurations

#Change video driver to vulkan
sed -i 's|^video_driver = .*|video_driver = "vulkan"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable Integer Scale
sed -i 's|^video_scale_integer = .*|video_scale_integer = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable Run Ahead
sed -i 's|^run_ahead_enabled = .*|run_ahead_enabled = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^run_ahead_frames = .*|run_ahead_frames = "1"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable rewind
sed -i 's|^rewind_enable = .*|rewind_enable = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^rewind_granularity = .*|rewind_granularity = "15"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^audio_rewind_mute = .*|audio_rewind_mute = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^audio_block_frames = .*|audio_block_frames = "192"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable FPS dispay
sed -i 's|^fps_show = .*|fps_show = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Disable controler overlay dispay
sed -i 's|^input_overlay_enable = .*|input_overlay_enable = "false"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Sort Save/Load states by content
sed -i 's|^sort_savefiles_by_content_enable = .*|sort_savefiles_by_content_enable = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^sort_savestates_by_content_enable = .*|sort_savestates_by_content_enable = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable auto Save/Load states
sed -i 's|^savestate_auto_index = .*|savestate_auto_index = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^savestate_auto_load = .*|savestate_auto_load = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^savestate_auto_save = .*|savestate_auto_save = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable quit without confirmation
sed -i 's|^quit_on_close_content = .*|quit_on_close_content = "1"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^quit_press_twice = .*|quit_press_twice = "false"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null

#Enable shaders
sed -i 's|^menu_shader_pipeline = .*|menu_shader_pipeline = "1"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^quick_menu_show_shaders = .*|quick_menu_show_shaders = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^video_shader_enable = .*|video_shader_enable = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^video_shader_preset_save_reference_enable = .*|video_shader_preset_save_reference_enable = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
sed -i 's|^auto_shaders_enable = .*|auto_shaders_enable = "true"|' /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg 2>/dev/null
