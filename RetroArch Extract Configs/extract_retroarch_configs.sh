# Clean up any previous temporary folders and create new ones
rm -rf /sdcard/Documents/ra_temp_backup
mkdir -p /sdcard/Documents/ra_temp_backup/internal/cores
mkdir -p /sdcard/Documents/ra_temp_backup/external

# Backup RetroArch cores (requires Root access)
cp -r /data/data/com.retroarch.aarch64/cores/* /sdcard/Documents/ra_temp_backup/internal/cores/ 2>/dev/null

# Backup main configuration files (retroarch.cfg)
cp /sdcard/Android/data/com.retroarch.aarch64/files/retroarch.cfg /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp /sdcard/RetroArch/retroarch.cfg /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Sanitize sensitive data (Tokens, Passwords and Accounts) from the backup config
sed -i 's/^cheevos_token = ".*/cheevos_token = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^cheevos_username = ".*/cheevos_username = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^cheevos_password = ".*/cheevos_password = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^netplay_password = ".*/netplay_password = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^netplay_spectate_password = ".*/netplay_spectate_password = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^twitch_stream_key = ".*/twitch_stream_key = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^youtube_stream_key = ".*/youtube_stream_key = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^facebook_stream_key = ".*/facebook_stream_key = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^webdav_username = ".*/webdav_username = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null
sed -i 's/^webdav_password = ".*/webdav_password = ""/' /sdcard/Documents/ra_temp_backup/external/retroarch.cfg 2>/dev/null

# Backup BIOS/System files
cp -r /sdcard/Android/data/com.retroarch.aarch64/files/system /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp -r /sdcard/RetroArch/system /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Backup core overrides and game-specific configs
cp -r /sdcard/Android/data/com.retroarch.aarch64/files/config /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp -r /sdcard/RetroArch/config /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Backup playlists (game lists)
cp -r /sdcard/Android/data/com.retroarch.aarch64/files/playlists /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp -r /sdcard/RetroArch/playlists /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Remove usage logs and play history from the backup playlists
rm -f /sdcard/Documents/ra_temp_backup/external/playlists/*history*.lpl 2>/dev/null

# Backup controller mapping profiles (autoconfig)
cp -r /sdcard/Android/data/com.retroarch.aarch64/files/autoconfig /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp -r /sdcard/RetroArch/autoconfig /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Backup on-screen overlays (virtual gamepads and borders)
cp -r /sdcard/Android/data/com.retroarch.aarch64/files/overlays /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp -r /sdcard/RetroArch/overlays /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Backup visual shaders
cp -r /sdcard/Android/data/com.retroarch.aarch64/files/shaders /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null
cp -r /sdcard/RetroArch/shaders /sdcard/Documents/ra_temp_backup/external/ 2>/dev/null

# Compress the temporary folder into a tar.gz archive in the Documents folder
cd /sdcard/Documents/ra_temp_backup && tar -czf /sdcard/Documents/RetroArch_Backup_$(date +%Y%m%d_%H%M).tar.gz ./*

# Set permissions so the file can be moved freely and remove the temporary folder
chmod 777 /sdcard/Documents/RetroArch_Backup_*.tar.gz
rm -rf /sdcard/Documents/ra_temp_backup

# Force Android Media Scanner to index the folder so the file shows up on PC via USB
am broadcast -a android.intent.action.MEDIA_SCANNER_SCAN_FILE -d file:///sdcard/Documents/ 2>/dev/null