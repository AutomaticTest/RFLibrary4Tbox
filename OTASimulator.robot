*** Settings ***
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteOTA/IRemoteOta.robot

*** Test Cases ***
OTA升级
    Log    =>指定下载TBox当前版本，使其升级失败
    等待连接成功
    设置OTA命令    DX03.0002.0000.0005    http://120.77.44.181/DX03.0002.0000.0005-DX03.0002.0000.0004.zip    d952ecbf236ee1c5b7d4dfe74e8a5a56
    Run Keyword And Continue On Failure    等待OTA结果    expected=UPGRADE_FAILED
    Log    =>指定下载不存在升级文件，使其下载失败
    Sleep    30
    等待连接成功
    设置OTA命令    DX03.0002.0000.0005    120.77.44.181    d952ecbf236ee1c5b7d4dfe74e8a5a56
    Run Keyword And Continue On Failure    等待OTA结果    expected=DOWNLOAD_FILE_FAILED
    Comment    Log    =>指定下载TBox最新版本，使其升级成功
    Comment    Sleep    30
    Comment    等待连接成功
    Comment    设置OTA命令    DX03.0002.0000.0005    http://120.77.44.181/FULL.DX03.0002.0000.0005.zip    765e36053e7df4259f2fe86fca1c0eee
    Comment    Run Keyword And Continue On Failure    等待OTA结果    expected=UPGRADE_SUCCESSED
