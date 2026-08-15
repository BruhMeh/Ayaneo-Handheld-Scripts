#!/system/bin/sh
# Apply 60Hz refresh rate locks
settings put system peak_refresh_rate 60.0
settings put system min_refresh_rate 5.0

# Apply SurfaceFlinger and EGL debug properties
debug.sf.disable_hw_overlays=0
debug.sf.latch_unsignaled=0
debug.egl.hw=0
debug.gr.swapinterval=1
service call SurfaceFlinger 1008 i32 0

echo "--- UPDATED SETTINGS ---"
echo "--- 1. REFRESH RATE SETTINGS ---"
echo "Peak Refresh Rate: $(settings get system peak_refresh_rate)"
echo "Min Refresh Rate: $(settings get system min_refresh_rate)"
echo ""

echo "--- 2. ACTIVE SYSTEM PROPERTIES (RAM) ---"
echo "Disable HW Overlays: $(getprop debug.sf.disable_hw_overlays)"
echo "Latch Unsignaled: $(getprop debug.sf.latch_unsignaled)"
echo "EGL HW: $(getprop debug.egl.hw)"
echo "GR Swap Interval: $(getprop debug.gr.swapinterval)"
echo ""