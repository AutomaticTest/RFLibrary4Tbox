*** Settings ***
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteOTA/IRemoteOta.robot

*** Test Cases ***
OTA升级
    [Documentation]    调试中
    等待连接成功
    设置指定OTA信息    DX03.0002.0000.0005    http://120.77.44.181/DX03.0002.0000.0005-DX03.0002.0000.0004.zip    d952ecbf236ee1c5b7d4dfe74e8a5a56
    Sleep    300
    Comment    设置指定OTA信息    DX03.0002.0000.0005    http://120.77.44.181/FULL.DX03.0002.0000.0005.zip    765e36053e7df4259f2fe86fca1c0eee
    Comment    Sleep    600
