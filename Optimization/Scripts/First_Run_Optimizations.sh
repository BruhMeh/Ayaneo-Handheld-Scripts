#!/system/bin/sh

echo "Starting system optimization..."

# ---------------------------------------------------------
# 1. Google Services and Updater Restrictions
# ---------------------------------------------------------
echo "Restricting Google Play Services and related apps..."
cmd appops set com.google.android.gms RUN_IN_BACKGROUND ignore
am set-standby-bucket com.google.android.gms restricted

cmd appops set com.android.vending RUN_IN_BACKGROUND ignore
am set-standby-bucket com.android.vending restricted

cmd appops set com.google.android.inputmethod.latin RUN_IN_BACKGROUND ignore
am set-standby-bucket com.google.android.inputmethod.latin restricted

cmd appops set com.ayaneo.update RUN_IN_BACKGROUND ignore
am set-standby-bucket com.ayaneo.update restricted

# ---------------------------------------------------------
# 2. Strict Restrictions (Background Permissions and Sensors)
# ---------------------------------------------------------
echo "Applying location, sensor, and wakelock restrictions..."


cmd appops set com.google.android.gms COARSE_LOCATION ignore
cmd appops set com.google.android.gms READ_CONTACTS ignore
cmd appops set com.google.android.gms WRITE_CONTACTS ignore
cmd appops set com.google.android.gms WIFI_SCAN ignore
cmd appops set com.google.android.gms SYSTEM_ALERT_WINDOW ignore
cmd appops set com.google.android.gms WAKE_LOCK ignore
cmd appops set com.google.android.gms GET_USAGE_STATS ignore
cmd appops set com.google.android.gms RUN_IN_BACKGROUND ignore
cmd appops set com.google.android.gms READ_DEVICE_IDENTIFIERS ignore
cmd appops set com.google.android.gms ACTIVITY_RECOGNITION ignore
cmd appops set com.google.android.gms FINE_LOCATION ignore
cmd appops set com.google.android.gms MONITOR_LOCATION ignore
cmd appops set com.google.android.gms MONITOR_HIGH_POWER_LOCATION ignore
cmd appops set com.google.android.gms BLUETOOTH_SCAN ignore


settings put global sensor_privacy 1
settings put global wifi_scan_always_enabled 0
settings put global ble_scan_always_enabled 0

# ---------------------------------------------------------
# 3. Debloat: Disabling Unnecessary Apps
# ---------------------------------------------------------
echo "Disabling background telemetry and unnecessary native apps..."
pm disable-user --user 0 com.google.android.feedback
pm disable-user --user 0 com.google.android.apps.turbo
pm disable-user --user 0 com.google.android.apps.wellbeing
pm disable-user --user 0 com.google.android.googlequicksearchbox
pm disable-user --user 0 com.google.android.apps.photos
pm disable-user --user 0 com.android.printspooler
pm disable-user --user 0 com.android.bips
pm disable-user --user 0 com.android.dreams.phototable
pm disable-user --user 0 com.android.managedprovisioning
pm disable-user --user 0 com.android.stk

# ---------------------------------------------------------
# 4. System, Battery, and Performance Adjustments
# ---------------------------------------------------------
echo "Optimizing system resources..."
settings put secure send_action_app_error 0
settings put system send_security_reports 0
settings put global master_sync_allow_background_in_battery_saver 0
settings put global job_scheduler_quota_controller_max_job_count_bg 3
settings put global ota_disable_automatic_update 1
device_config put activity_manager_native_boot use_freezer true
setprop sys.use_fifo_ui 1
settings put global captive_portal_mode 2
settings put global alarm_manager_constants "allow_while_idle_short_time=10000,allow_while_idle_long_time=20000"

# ---------------------------------------------------------
# 5. Compilation, Trim, and Cleanup
# ---------------------------------------------------------
echo "Running fstrim, clearing cache, and AOT compilation (this may take several minutes)..."
# Forces maximum quality compilation for newly installed apps
setprop dalvik.vm.dex2oat-filter speed

sm fstrim
pm trim-caches 999G
cmd package bg-dexopt-job
cmd package compile -m speed -a

echo "Optimization successfully completed! Please reboot the device."