*** Settings ***
Documentation     CAN 0(Body)测试套件
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py
Library           TBoxLibrary
Resource          R.CAN/ICan.robot
Resource          R.System/IMqttSystem.robot
Resource          R.RemoteConfigRequest/IRemoteConfig.robot

*** Test Cases ***
发动机状态
    等待连接成功
    Log    初始化发动机状态
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    Sleep    10
    设置PEPS状态    Off
    设置发动机状态    KeyOff
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=KeyOff
    Sleep    1
    设置PEPS状态    Acc
    设置发动机状态    KeyOff
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=KeyOff
    Sleep    1
    设置PEPS状态    On
    设置发动机状态    KeyOn
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=KeyOn
    Sleep    1
    设置PEPS状态    Start
    设置发动机状态    Cranking
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=Cranking
    Sleep    1
    设置PEPS状态    Start
    设置发动机状态    Running
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机状态    expected=Running
    Sleep    1
    设置发动机转速    2000
    Sleep    10
    Run Keyword And Continue On Failure    获取发动机转速    expected=2000

雨刷状态
    [Documentation]    雨刷
    等待连接成功
    Log    初始化雨刷状态
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    设置雨刷状态    HighSpeed
    Sleep    5
    设置雨刷状态    Stop
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=Off
    Sleep    1
    设置雨刷状态    LowSpeed
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=On
    Sleep    1
    设置雨刷状态    HighSpeed
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=On
    Sleep    1
    设置雨刷状态    Interrupt
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=Unknown
    Sleep    1
    设置雨刷状态    Wash
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=On
    Sleep    1
    设置雨刷状态    Reserved
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=Unknown
    Sleep    1
    设置雨刷状态    SwitchFailure
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=Off
    Sleep    1
    设置雨刷状态    Invalid
    Sleep    10
    Run Keyword And Continue On Failure    获取雨刷状态    expected=Unknown

变速箱状态
    [Documentation]    "P" / "R" / "N" / "D" / "S" / "Manual1" / "Manual2" / "Manual3"
    等待连接成功
    Log    初始化变速箱状态
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    设置变速箱状态    S
    Sleep    5
    设置变速箱状态    P
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=P
    Sleep    1
    设置变速箱状态    R
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=R
    Sleep    1
    设置变速箱状态    N
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=N
    Sleep    1
    设置变速箱状态    D
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=D
    Sleep    1
    设置变速箱状态    Manual1
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=Manual1
    Sleep    1
    设置变速箱状态    Manual2
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=Manual2
    Sleep    1
    设置变速箱状态    Manual3
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=Manual3
    Sleep    1
    设置变速箱状态    S
    Sleep    10
    Run Keyword And Continue On Failure    获取变速箱状态    expected=S

车门状态
    [Documentation]    "左前门" / "右前门" / "左后门" / "右后门" / "后备箱"
    等待连接成功
    设置Vehicle上传频率    3
    设置左前门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取左前门状态    expected=On
    Sleep    1
    设置左前门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取左前门状态    expected=Off
    Sleep    1
    设置右前门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取右前门状态    expected=On
    Sleep    1
    设置右前门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取右前门状态    expected=Off
    Sleep    1
    设置左后门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取左后门状态    expected=On
    Sleep    1
    设置左后门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取左后门状态    expected=Off
    Sleep    1
    设置右后门状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取右后门状态    expected=On
    Sleep    1
    设置右后门状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取右后门状态    expected=Off
    Sleep    1
    设置后备箱状态    Open
    Sleep    10
    Run Keyword And Continue On Failure    获取后备箱状态    expected=On
    Sleep    1
    设置后备箱状态    Close
    Sleep    10
    Run Keyword And Continue On Failure    获取后备箱状态    expected=Off
    Sleep    1
    设置门锁状态    Default
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown
    Sleep    1
    设置门锁状态    Unlock
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Off
    Sleep    1
    设置门锁状态    Locked
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=On
    Sleep    1
    设置门锁状态    Error
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown

空调状态
    [Documentation]    "空调状态" / "前除霜" / "后除霜" / "空调温度"
    等待连接成功
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    设置空调状态    On
    Sleep    10
    Run Keyword And Continue On Failure    获取空调状态    expected=On
    Sleep    1
    设置空调状态    Off
    Sleep    10
    Run Keyword And Continue On Failure    获取空调状态    expected=Off
    Sleep    1
    设置前除霜状态    On
    Sleep    20
    Run Keyword And Continue On Failure    获取前除霜状态    expected=On
    Sleep    1
    设置前除霜状态    Off
    Sleep    20
    Run Keyword And Continue On Failure    获取前除霜状态    expected=Off
    Sleep    1
    设置后除霜状态    On
    Sleep    10
    Run Keyword And Continue On Failure    获取后除霜状态    expected=On
    Sleep    1
    设置后除霜状态    Off
    Sleep    10
    Run Keyword And Continue On Failure    获取后除霜状态    expected=Off
    Sleep    1
    设置空调温度    10.5
    Sleep    20
    Run Keyword And Continue On Failure    获取空调温度    expected=10.5
    Sleep    1
    设置空调温度    25.5
    Sleep    20
    Run Keyword And Continue On Failure    获取空调温度    expected=25.5
    Sleep    1
    设置空调温度    35.5
    Sleep    20
    Run Keyword And Continue On Failure    获取空调温度    expected=35.5

手刹状态
    [Documentation]    上报以下状态：
    ...    "Up" / "Down"
    等待连接成功
    设置Vehicle上传频率    3
    设置手刹状态    Up
    Sleep    20
    Run Keyword And Continue On Failure    获取手刹状态    expected=On
    Sleep    1
    设置手刹状态    Down
    Sleep    20
    Run Keyword And Continue On Failure    获取手刹状态    expected=Off

车轮胎压
    等待连接成功
    设置Vehicle上传频率    3
    Sleep    3
    设置左前车轮胎压    _1_6_bar
    设置左后车轮胎压    _3_7_bar
    设置右前车轮胎压    _2_8_bar
    设置右后车轮胎压    _3_8_bar
    Sleep    10
    Run Keyword And Continue On Failure    获取左前车轮胎压    expected=_1_6_bar
    Run Keyword And Continue On Failure    获取左后车轮胎压    expected=_3_7_bar
    Run Keyword And Continue On Failure    获取右前车轮胎压    expected=_2_8_bar
    Run Keyword And Continue On Failure    获取右后车轮胎压    expected=_3_8_bar
    sleep    3
    设置左前车轮胎压    _1_1_bar
    sleep    5
    Run Keyword And Continue On Failure    获取左前车轮胎压    expected=_1_1_bar
    sleep    3
    设置左前车轮胎压    _2_1_bar
    sleep    10
    Run Keyword And Continue On Failure    获取左前车轮胎压    expected=_2_1_bar
    sleep    3
    设置左前车轮胎压    _3_1_bar
    sleep    10
    Run Keyword And Continue On Failure    获取左前车轮胎压    expected=_3_1_bar
    sleep    3
    设置右后车轮胎压    _4_0_bar
    sleep    10
    Run Keyword And Continue On Failure    获取右后车轮胎压    expected=_4_0_bar
    sleep    3
    设置右后车轮胎压    _3_9_bar
    sleep    10
    Run Keyword And Continue On Failure    获取右后车轮胎压    expected=_3_9_bar

车窗状态
    [Documentation]    "左前窗" / "右前窗" / "左后窗" / "右后窗" / "天窗"
    等待连接成功
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    设置左前窗状态    Opened
    Sleep    10
    Run Keyword And Continue On Failure    获取左前窗状态    expected=On
    Sleep    1
    设置左前窗状态    Closed
    Sleep    10
    Run Keyword And Continue On Failure    获取左前窗状态    expected=Off
    Sleep    1
    设置右前窗状态    Opened
    Sleep    10
    Run Keyword And Continue On Failure    获取右前窗状态    expected=On
    Sleep    1
    设置右前窗状态    Closed
    Sleep    10
    Run Keyword And Continue On Failure    获取右前窗状态    expected=Off
    Sleep    1
    设置左后窗状态    Opened
    Sleep    10
    Run Keyword And Continue On Failure    获取左后窗状态    expected=On
    Sleep    1
    设置左后窗状态    Closed
    Sleep    10
    Run Keyword And Continue On Failure    获取左后窗状态    expected=Off
    Sleep    1
    设置右后窗状态    Opened
    Sleep    10
    Run Keyword And Continue On Failure    获取右后窗状态    expected=On
    Sleep    1
    设置右后窗状态    Closed
    Sleep    10
    Run Keyword And Continue On Failure    获取右后窗状态    expected=Off
    Sleep    1
    设置天窗状态    TiltUp
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=On
    Sleep    1
    设置天窗状态    VentArea
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=Unknown
    Sleep    1
    设置天窗状态    AntipinchInVent
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=Unknown
    Sleep    1
    设置天窗状态    FullyClose
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=Off
    Sleep    1
    设置天窗状态    AntipInchInPartiallySlide
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=Unknown
    Sleep    1
    设置天窗状态    PartiallySlide
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=Unknown
    Sleep    1
    设置天窗状态    FullyOpen
    Sleep    10
    Run Keyword And Continue On Failure    获取天窗状态    expected=On

PEPS状态
    等待连接成功
    设置Vehicle上传频率    3
    Comment    设置PEPS状态    Default
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取PEPS状态    expected=Default
    Comment    Sleep    1
    设置PEPS状态    Off
    Sleep    10
    Run Keyword And Continue On Failure    获取PEPS状态    expected=Off
    Sleep    1
    设置PEPS状态    Acc
    Sleep    10
    Run Keyword And Continue On Failure    获取PEPS状态    expected=Acc
    Sleep    1
    设置PEPS状态    On
    Sleep    10
    Run Keyword And Continue On Failure    获取PEPS状态    expected=On
    Sleep    1
    设置PEPS状态    Start
    Sleep    10
    Run Keyword And Continue On Failure    获取PEPS状态    expected=Start
    Comment    Sleep    1
    Comment    设置PEPS状态    Invalid
    Comment    Sleep    20
    Comment    Run Keyword And Continue On Failure    获取PEPS状态    expected=Invalid

车门锁状态
    [Documentation]    "门锁"
    等待连接成功
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    Comment    设置门锁状态    Default
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown
    Sleep    1
    设置门锁状态    Unlock
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=Off
    Sleep    1
    设置门锁状态    Locked
    Sleep    10
    Run Keyword And Continue On Failure    获取门锁状态    expected=On
    Comment    Sleep    1
    Comment    设置门锁状态    Error
    Comment    Sleep    10
    Comment    Run Keyword And Continue On Failure    获取门锁状态    expected=Unknown

仪表状态
    等待连接成功
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    设置剩余油量    60
    Sleep    10
    Run Keyword And Continue On Failure    获取剩余油量    expected=60
    Sleep    1
    设置续航里程    100
    Sleep    10
    Run Keyword And Continue On Failure    获取续航里程    expected=100
    Sleep    1
    设置瞬时油耗    30
    Sleep    10
    Run Keyword And Continue On Failure    获取瞬时油耗    expected=30.0
    Sleep    1
    设置瞬时车速    40
    Sleep    10
    Run Keyword And Continue On Failure    获取瞬时车速    expected=40
    Sleep    1
    设置方向盘转角    -100
    Sleep    10
    Run Keyword And Continue On Failure    获取方向盘转角    expected=-100
    Sleep    1
    设置方向盘转角    -100
    Sleep    10
    Run Keyword And Continue On Failure    获取方向盘转角    expected=-100
    Sleep    1
    设置累计里程    250000
    Sleep    10
    Run Keyword And Continue On Failure    获取累计里程    expected=250000
    Sleep    1
    设置平均油耗    35
    Sleep    10
    Run Keyword And Continue On Failure    获取平均油耗    expected=35

操控状态
    等待连接成功
    设置Vehicle上传频率    3
    设置PEPS状态    Start
    设置发动机状态    Running
    Sleep    10
    设置油门脚踏板角度    65
    Sleep    10
    Run Keyword And Continue On Failure    获取油门脚踏板角度    expected=65
    Log    刹车踏板角度，CAN协议未定义

CAN协议未定义
    Log    蓄电池电压，未定义
    Log    刹车踏板角度，未定义
    Log    离合器踏板角度，未定义

MCU未上传
    Log    是否系安全带，未上传
    Log    近光灯状态，未上传
    Log    远光灯状态，未上传
    Log    光照强度，未上传
