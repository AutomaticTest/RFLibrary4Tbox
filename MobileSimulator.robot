*** Settings ***
Documentation     手机模拟测试套件
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py
Library           TBoxLibrary
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteControlCommand/IAircondition.robot

*** Test Cases ***
空调
    [Documentation]    控制空调
    Log    远控空调未实现

发动机
    [Documentation]    控制发动机
    Log    远控发动机未实现

中控锁
    [Documentation]    控制中控锁
    Log    远控中控锁未实现

车窗
    [Documentation]    控制车窗
    Log    远控车窗未实现

座椅加热
    [Documentation]    控制座椅加热
    Log    远控座椅加热未实现

追踪
    [Documentation]    追踪
    Log    远控追踪未实现
