*** Settings ***
Documentation     TSP模拟测试套件
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteConfigRequest/IRemoteConfig.robot
Variables         Config.py
Resource          R.RemoteDiagnosis/IRemoteDiagnosis.robot

*** Test Cases ***
Demo
    等待连接成功
    Sleep    5
    设置Datamining上传频率    5
    Sleep    5
    设置Vehicle上传频率    10

远程诊断
    等待连接成功
    Sleep    5
    远程诊断
