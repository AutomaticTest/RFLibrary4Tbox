*** Settings ***
Documentation     CAN 0(Body)测试套件
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Library           TBoxLibrary
Resource          R.RemoteConfigRequest/IRemoteConfig.robot
Resource          R.System/IMqttSystem.robot
Resource          R.CAN/ICan.robot
Variables         Config.py

*** Test Cases ***
发动机状态
    等待连接成功
    设置Vehicle上传频率    5
    Run Keyword And Continue On Failure    设置发动机状态    KeyOff
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=KeyOff
    Sleep    1
    Run Keyword And Continue On Failure    设置发动机状态    KeyOn
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=KeyOn
    Sleep    1
    Run Keyword And Continue On Failure    设置发动机状态    Cranking
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=Cranking
    Sleep    1
    Run Keyword And Continue On Failure    设置发动机状态    Running
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=Running

雨刷状态
    [Documentation]    上报以下状态：
    ...    None
    Comment    等待连接成功
    Comment    设置Vehicle上传频率    5
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    Stop
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=Off
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    LowSpeed
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=On
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    HighSpeed
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=On
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    Interrupt
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=Unknown
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    Wash
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=On
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    Reserved
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=Unknown
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    SwitchFailure
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=Off
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置雨刷状态    Invalid
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取雨刷状态    expected=Unknown

变速箱状态
    [Documentation]    上报以下状态：
    ...    "P" / "R" / "N" / "D" / "S" / "Manual1" / "Manual2" / "Manual3"
    等待连接成功
    设置Vehicle上传频率    5
    Run Keyword And Continue On Failure    设置变速箱状态    P
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=P
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    R
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=R
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    N
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=N
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    D
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=D
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    Manual1
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=Manual1
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    Manual2
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=Manual2
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    Manual3
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=Manual3
    Sleep    1
    Run Keyword And Continue On Failure    设置变速箱状态    S
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=S

车门状态
    [Documentation]    上报以下状态：
    ...    "左前门" / "右前门" / "左后门" / "右后门" / "后备箱" / "门锁"
    等待连接成功
    设置Vehicle上传频率    5
    Run Keyword And Continue On Failure    设置左前门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取左前门状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置左前门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取左前门状态    expected=Off
    Sleep    1
    Run Keyword And Continue On Failure    设置右前门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取右前门状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置右前门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取右前门状态    expected=Off
    Sleep    1
    Run Keyword And Continue On Failure    设置左后门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取左后门状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置左后门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取左后门状态    expected=Off
    Sleep    1
    Run Keyword And Continue On Failure    设置右后门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取右后门状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置右后门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取右后门状态    expected=Off
    Sleep    1
    Run Keyword And Continue On Failure    设置后备箱状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取后备箱状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置后备箱状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取后备箱状态    expected=Off
    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置门锁状态    Default
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取门锁状态    expected=Off
    Comment    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    Unlock
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Off
    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    Locked
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    Error
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown
    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    Invalid
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown
    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    InvalidValue1
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown
    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    InvalidValue2
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown
    Sleep    1
    Run Keyword And Continue On Failure    设置门锁状态    InitialValue
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown

空调状态
    [Documentation]    上报以下状态：
    ...    "前除霜" / "空调温度"
    等待连接成功
    设置Vehicle上传频率    5
    Comment    Run Keyword And Continue On Failure    设置空调状态    On
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取空调状态    expected=On
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置空调状态    Off
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取空调状态    expected=Off
    Comment    Sleep    1
    Run Keyword And Continue On Failure    设置前除霜状态    On
    Sleep    10
    Run Keyword And Continue On Failure    获取前除霜状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置前除霜状态    Off
    Sleep    10
    Run Keyword And Continue On Failure    获取前除霜状态    expected=Off
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置后除霜状态    On
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取后除霜状态    expected=On
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置后除霜状态    Off
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取后除霜状态    expected=Off
    Sleep    1
    Run Keyword And Continue On Failure    设置空调温度    10.5
    Sleep    10
    Run Keyword And Continue On Failure    获取空调温度    expected=17.0
    Sleep    1
    Run Keyword And Continue On Failure    设置空调温度    25.5
    Sleep    10
    Run Keyword And Continue On Failure    获取空调温度    expected=25.5
    Sleep    1
    Run Keyword And Continue On Failure    设置空调温度    35.5
    Sleep    10
    Run Keyword And Continue On Failure    获取空调温度    expected=32.0

手刹状态
    [Documentation]    上报以下状态：
    ...    "Up" / "Down"
    等待连接成功
    设置Vehicle上传频率    5
    Comment    Run Keyword And Continue On Failure    设置手刹状态    Invalid
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取手刹状态    expected=Unknown
    Comment    Sleep    1
    Run Keyword And Continue On Failure    设置手刹状态    Up
    Sleep    10
    Run Keyword And Continue On Failure    获取手刹状态    expected=On
    Sleep    1
    Run Keyword And Continue On Failure    设置手刹状态    Down
    Sleep    10
    Run Keyword And Continue On Failure    获取手刹状态    expected=Off
    Comment    Sleep    1
    Comment    Run Keyword And Continue On Failure    设置手刹状态    Reserved
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取手刹状态    expected=Unknown
