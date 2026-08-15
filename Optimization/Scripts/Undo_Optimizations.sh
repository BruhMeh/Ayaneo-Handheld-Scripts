#!/system/bin/sh

echo "Reverting system optimizations and restoring defaults..."

# ---------------------------------------------------------
# 1. Reverting Google Services and Updater Restrictions
# ---------------------------------------------------------
echo "Restoring background execution for Play Services and related apps..."
cmd appops set com.google.android.gms RUN_IN_BACKGROUND allow
am set-standby-bucket com.google.android.gms active

cmd appops set com.android.vending RUN_IN_BACKGROUND allow
am set-standby-bucket com.android.vending active

cmd appops set com.google.android.inputmethod.latin RUN_IN_BACKGROUND allow
am set-standby-bucket com.google.android.inputmethod.latin active

cmd appops set com.ayaneo.update RUN_IN_BACKGROUND allow
am set-standby-bucket com.ayaneo.update active

# ---------------------------------------------------------
# 2. Reverting Strict Restrictions (Background Permissions and Sensors)
# ---------------------------------------------------------
echo "Restoring location, sensor, and wakelock permissions..."

cmd appops set com.google.android.gms COARSE_LOCATION allow
cmd appops set com.google.android.gms READ_CONTACTS allow
cmd appops set com.google.android.gms WRITE_CONTACTS allow
cmd appops set com.google.android.gms WIFI_SCAN allow
cmd appops set com.google.android.gms SYSTEM_ALERT_WINDOW allow
cmd appops set com.google.android.gms WAKE_LOCK allow
cmd appops set com.google.android.gms GET_USAGE_STATS allow
cmd appops set com.google.android.gms RUN_IN_BACKGROUND allow
cmd appops set com.google.android.gms READ_DEVICE_IDENTIFIERS allow
cmd appops set com.google.android.gms ACTIVITY_RECOGNITION allow
cmd appops set com.google.android.gms FINE_LOCATION allow
cmd appops set com.google.android.gms MONITOR_LOCATION allow
cmd appops set com.google.android.gms MONITOR_HIGH_POWER_LOCATION allow
cmd appops set com.google.android.gms BLUETOOTH_SCAN allow

settings put global sensor_privacy 0
settings put global wifi_scan_always_enabled 1
settings put global ble_scan_always_enabled 1

# ---------------------------------------------------------
# 3. Reverting Debloat: Enabling Apps
# ---------------------------------------------------------
echo "Re-enabling native apps and background telemetry..."
pm enable --user 0 com.google.android.feedback
pm enable --user 0 com.google.android.apps.turbo
pm enable --user 0 com.google.android.apps.wellbeing
pm enable --user 0 com.google.android.googlequicksearchbox
pm enable --user 0 com.google.android.apps.photos
pm enable --user 0 com.android.printspooler
pm enable --user 0 com.android.bips
pm enable --user 0 com.android.dreams.phototable
pm enable --user 0 com.android.managedprovisioning
pm enable --user 0 com.android.stk

# ---------------------------------------------------------
# 4. Reverting System, Battery, and Performance Adjustments
# ---------------------------------------------------------
echo "Restoring system resources to factory defaults..."

# The best way to revert a modified setting is to "delete" the override 
# we created, making Android read the ROM's factory default again.
settings delete secure send_action_app_error
settings delete system send_security_reports
settings delete global master_sync_allow_background_in_battery_saver
settings delete global job_scheduler_quota_controller_max_job_count_bg
settings delete global ota_disable_automatic_update
settings delete global captive_portal_mode
settings delete global alarm_manager_constants

device_config delete activity_manager_native_boot use_freezer
setprop sys.use_fifo_ui 0

echo "Reversal successfully completed! Please reboot the device to apply."