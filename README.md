# Ayaneo Handheld Scripts

![License](https://img.shields.io/badge/license-MIT-green)
![Scripts](https://img.shields.io/badge/scripts-7-blue)
<a href="https://www.buymeacoffee.com/Brumeh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-violet.png" alt="Buy Me A Coffee" style="height: 30px !important;width: 124px !important;" ></a>

A collection of utility, optimization, and emulation scripts specifically designed for Ayaneo Android Handhelds. 

These scripts aim to improve system performance, fix screen ghosting issues, and automate complex RetroArch configurations to provide the best possible out-of-the-box gaming experience.

## Tested & Supported Devices

These scripts and presets have been tested and verified on the following handhelds:

* Ayaneo Pocket DMG
* Ayaneo Pocket Vert
* Ayaneo Pocket DS
* Ayaneo Pocket Air Mini
* Ayaneo Pocket Micro
* Konkr Pocket Fit Elite
* Ayaneo Pocket S-Mini

## Prerequisites

Before executing any script or applying presets, ensure your device meets the following requirements:

1. **Developer Options:** Android Developer Mode must be enabled.
2. **Shizuku:** [Shizuku](https://shizuku.rikka.app/) must be installed, configured, and actively running to grant necessary system permission hooks for debloating and script execution.

## Features

* System debloat presets and background process optimization
* Screen ghosting mitigation for specific Ayaneo displays
* Automated RetroArch core downloads and shader injections
* Easy RetroArch configuration extraction and backup

## Modules / Categories

### 1. Optimization
Presets and scripts to remove bloatware and maximize device performance.
* **Canta Presets:** JSON profiles to safely debloat the device using the Canta app.
* **First_Run_Optimizations.sh:** Intended to be run right after debloating. It restricts background processes, enables cached app freezing, and forces Ahead-of-Time (AoT) compilation for all apps.
* **ReRun_Optimizations.sh:** Intended to be run after every device reboot. It re-applies RAM-based configurations (`setprop`) and re-runs AoT compilation to ensure maximum performance.
* **Undo_Optimizations.sh:** Reverts background restrictions, restores app background permissions/standby buckets, re-enables native packages, and resets system settings overrides to factory defaults.

### 2. Screen Ghosting Fix
Scripts designed to reduce screen ghosting on the Ayaneo Pocket Air Mini and Ayaneo Pocket S Mini.
* **screen_refresh_fix.sh:** Applies system-level tweaks to improve panel response times.
* **screen_refresh_undo.sh:** Reverts the changes to system defaults if needed.

### 3. RetroArch Extract Config
* **extract_retroarch_configs.sh:** A simple utility script to extract all your current RetroArch configurations. Highly recommended for backing up your setup or migrating it to other devices.

### 4. RetroArch Auto Config
Scripts meant to automatically configure a RetroArch core with the best possible settings, shaders, and visual scaling for lay users.
* **retro_arch_common_auto_config.sh:** Automatically set RetroArch most common configurations. Such as: vulkan driver, run ahead, integer scale, rewind, fps counter, disable controler overlay, set auto save/load states and enable shaders.
* **mesen-s_auto_config.sh:** Automatically downloads the Mesen-S core, downloads retro crisis shaders package, and configures retro crisis 1080p Flat RC GDV-NTSC - SNES - Clean shader as the core default.
* **bsnes_auto_config.sh:** Automatically downloads the bsnes core, downloads retro crisis shaders package, and configures retro crisis 1080p Flat RC GDV-NTSC - SNES - Clean shader as the core default.
* **sameboy_auto_config.sh:** Automatically downloads the SameBoy core, and configures an LCD + Pixel Transparency shader as the core default. It also sets up a specific shader for the `gb` (Game Boy) roms folder with a Dot Matrix grid and Game Boy Light (Teal) colorization.

>[!NOTE]
> **You need to have installed RetroArch outside of the play store for it to work, and have not changed your default shaders, cores and configs files locations within retroArch**


## Usage

### Executing Scripts (Recommended Method)
The most efficient way to execute scripts on Ayaneo devices is via the native **AyaSettings** application:
1. Open **AyaSettings**.
2. Navigate to **Device > Root Script**.
3. Select and execute the target `.sh` script (this automatically executes the script with root privileges).

*Alternatively, scripts can be executed via ADB shell from a PC or using local terminal emulators such as Termux.*

### Importing Canta Presets
To apply debloat profiles:
1. Open the **Canta** app.
2. Go to **Presets > Import**.
3. Select the JSON preset corresponding to your device model (e.g., `Brumeh_KPFE_Canta_Preset.json` or `Brumeh_PAM_Canta_Preset.json`).

## Disclaimer & Warnings

> [!WARNING]
> **Use at your own risk.**
> 
> **I am not responsible for any damage caused to your handheld.**

* **Validated Safety:** All scripts have been tested and do not break core or standard handheld functionality.
* **Potential App Behavior Changes:** Since native Android packages are debloated via Canta and background permissions are strictly constrained, certain specific background applications or features might behave unexpectedly.
* **Reverting Changes:** If an issue arises, debloated packages can be restored directly within the Canta app. System restrictions and performance overrides can be reverted at any time by executing `Undo_Optimizations.sh`.
* **Low-Level Tweak Notice:** Some scripts (`screen_refresh_fix.sh`) modify system properties (such as `SurfaceFlinger`, EGL debugging flags, and standby buckets). Ensure you review what each script executes before running.It can be reverted by executing the `screen_refresh_undo.sh`.

All trademarks and console names belong to their respective owners.

## Support My Work
If these scripts helped you optimize your device and improve your gaming experience, consider buying me a coffee!

<a href="https://www.buymeacoffee.com/Brumeh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
