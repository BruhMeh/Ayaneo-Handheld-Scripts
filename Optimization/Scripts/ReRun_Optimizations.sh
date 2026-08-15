# ---------------------------------------------------------
# 1. System, Battery, and Performance Adjustments
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
# 1. Compilation, Trim, and Cleanup
# ---------------------------------------------------------
echo "Running fstrim, clearing cache, and AOT compilation (this may take several minutes)..."
# Forces maximum quality compilation for newly installed apps
setprop dalvik.vm.dex2oat-filter speed

sm fstrim
pm trim-caches 999G
cmd package bg-dexopt-job
cmd package compile -m speed -a

echo "Optimization successfully completed! Enjoy!"