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

远程配置
    等待连接成功
    设置ECall号码    87878787878
    Sleep    1
    Run Keyword And Continue On Failure    获取ECall号码    expected=87878787878
    设置ECall号码    99999999999
    Sleep    1
    Run Keyword And Continue On Failure    获取ECall号码    expected=99999999999
    Sleep    1
    设置BCall号码    11111111111
    Sleep    1
    Run Keyword And Continue On Failure    获取BCall号码    expected=11111111111
    Sleep    1
    设置BCall号码    00000000000
    Sleep    1
    Run Keyword And Continue On Failure    获取BCall号码    expected=00000000000
    Sleep    1
    设置ICall号码    66666666666
    Sleep    1
    Run Keyword And Continue On Failure    获取ICall号码    expected=66666666666
    Sleep    1
    设置ICall号码    22222222222
    Sleep    1
    Run Keyword And Continue On Failure    获取ICall号码    expected=22222222222
    Sleep    1
    设置ECall使能    True
    Sleep    1
    Run Keyword And Continue On Failure    获取ECall使能    expected=True
    Sleep    1
    设置ECall使能    False
    Sleep    1
    Run Keyword And Continue On Failure    获取ECall使能    expected=False
    Sleep    1
    设置BCall使能    True
    Sleep    1
    Run Keyword And Continue On Failure    获取BCall使能    expected=True
    Sleep    1
    设置BCall使能    False
    Sleep    1
    Run Keyword And Continue On Failure    获取BCall使能    expected=False
    Sleep    1
    设置ICall使能    True
    Sleep    1
    Run Keyword And Continue On Failure    获取ICall使能    expected=True
    Sleep    1
    设置ICall使能    False
    Sleep    1
    Run Keyword And Continue On Failure    获取ICall使能    expected=False
    Sleep    1
    设置Datamining上传频率    1
    Sleep    1
    Run Keyword And Continue On Failure    获取Datamining上传频率    expected=1
    Sleep    1
    设置Datamining上传频率    60
    Sleep    1
    Run Keyword And Continue On Failure    获取Datamining上传频率    expected=60
    Sleep    1
    设置Datamining上传频率    30
    Sleep    1
    Run Keyword And Continue On Failure    获取Datamining上传频率    expected=30
    Sleep    1
    设置Vehicle上传频率    1
    Sleep    1
    Run Keyword And Continue On Failure    获取Vehicle上传频率    expected=1
    Sleep    1
    设置Vehicle上传频率    60
    Sleep    1
    Run Keyword And Continue On Failure    获取Vehicle上传频率    expected=60
    Sleep    1
    设置Vehicle上传频率    30
    Sleep    1
    Run Keyword And Continue On Failure    获取Vehicle上传频率    expected=30
