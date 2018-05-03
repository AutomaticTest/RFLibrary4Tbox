*** Settings ***
Documentation     诊断模拟测试（实现不了，不了解UDS协议）
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteDiagnosis/IRemoteDiagnosis.robot

*** Test Cases ***
远程诊断
    [Documentation]    远程诊断
    Log    远程诊断未实现，不了解UDS协议
