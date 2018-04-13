*** Settings ***
Documentation     手机模拟测试套件
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteControlCommand/IAircondition.robot
Variables         Config.py

*** Test Cases ***
Aircondition
    [Documentation]    空调
    Log    Aircondition

CentralLocking
    [Documentation]    中控锁
    Log    CentralLocking

FindVehicle
    [Documentation]    寻车
    Log    FindVehicle

Engine
    [Documentation]    发动机
    Log    Engine
