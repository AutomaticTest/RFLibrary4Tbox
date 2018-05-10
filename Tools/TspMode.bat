@echo off

echo Switching TBox to tsp mode

@adb get-state | findstr "device"
IF ERRORLEVEL 1 goto DISCONNECTED

@adb push %cd%\Encryption\tsp_tbox.crt /usr/bin/server.crt
@adb shell "su -c ''"
@adb shell "su -c 'sync'"
@adb reboot

:DISCONNECTED
echo "TBox ADB连接失败"

@pause
