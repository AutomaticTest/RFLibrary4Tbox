@echo off

echo Switching TBox to automatic-test mode

@adb get-state | findstr "device"
IF ERRORLEVEL 1 goto DISCONNECTED

@adb push %cd%\Encryption\automatictest_tbox.crt /usr/bin/server.crt
@adb shell "su -c 'aconf-ctr set persist.sys.mqtt_addr ssl://14.21.42.158:8883'"
@adb shell "su -c 'sync'"
@adb reboot

:DISCONNECTED
echo "TBox ADB连接失败"

@pause
