*** Settings ***
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteOTA/IRemoteOta.robot

*** Test Cases ***
OTA升级
    等待连接成功
    设置指定OTA信息    DX03.0002.0000.0005-DX03.0002.0000.0004    120.77.44.181
    Sleep    180
