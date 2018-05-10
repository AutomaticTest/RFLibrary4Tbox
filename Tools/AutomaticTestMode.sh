#!/bin/bash
#
# Copyright (C) 2018 Clive Liu
#
# Switching TBox to automatic-test mode.
#
# Version: 0.1
#
# Modified record:
# Date          Author          Version         Description
# 2018/05/09    Clive Liu       v0.1            Initial release

function info () {
	echo -e "\033[0;31;1mInfo:\033[0m $1"
}

function error () {
	echo -e "\033[0;31;1mError:\033[0m $1"
	exit 1
}

#function main() {
    info "Switching TBox to automatic-test mode"

    [ `adb get-state` != "device" ] && error "TBox ADB连接失败"

	adb push `pwd`/Encryption/automatictest_tbox.crt /usr/bin/server.crt
	adb shell "su -c 'aconf-ctr set persist.sys.mqtt_addr ssl://14.21.42.158:8883'"
	adb shell "su -c 'sync'"

    info "It will be soon to reboot TBox device"
	adb reboot
#}
