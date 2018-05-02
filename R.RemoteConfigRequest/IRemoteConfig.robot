*** Settings ***
Documentation     远程配置请求
Library           TBoxLibrary

*** Keywords ***
设置MQTT服务器
    [Arguments]    ${host}    ${port}
    [Documentation]    设置MQTT服务器
    ...
    ...    :param host: 主机名
    ...
    ...    :param port: 端口号
    ...
    ...    Example:
    ...    | 设置MQTT服务器 | test.mosquitto.org:8883 |
    Request Tsp Config    MQTT_SERVER_ADDR_REQ    ${host}:${port}

设置MQTT主题
    [Arguments]    ${topic}
    [Documentation]    设置MQTT主题
    ...
    ...    :param topic: 主题
    ...
    ...    Example:
    ...    | 设置MQTT主题 | device/gate/bussiness |
    Request Tsp Config    MQTT_SERVER_TOPIC_REQ    ${topic}

设置备用MQTT服务器
    [Arguments]    ${host}    ${port}
    [Documentation]    设置备用MQTT服务器
    ...
    ...    :param host: 主机名
    ...
    ...    :param port: 端口号
    ...
    ...    Example:
    ...    | 设置备用MQTT服务器 | test.mosquitto.org:8883 |
    Request Tsp Config    MQTT_KEY_BUSINESS_SERVER_ADDR_REQ    ${host}:${port}

设置备用MQTT主题
    [Arguments]    ${topic}
    [Documentation]    设置备用MQTT主题
    ...
    ...    :param topic: 主题
    ...
    ...    Example:
    ...    | 设置备用MQTT主题 | device/gate/bussiness |
    Request Tsp Config    MQTT_KEY_BUSINESS_SERVER_TOPIC_REQ    ${topic}

设置ECall号码
    [Arguments]    ${number}
    [Documentation]    设置E-Call号码
    ...
    ...    :param number: 号码
    ...
    ...    Example:
    ...    | 设置ECall号码 | 13012345678 |
    Request Tsp Config    ECALL_NUMBER_REQ    ${number}

设置BCall号码
    [Arguments]    ${number}
    [Documentation]    设置B-Call号码
    ...
    ...    :param number: 号码
    ...
    ...    Example:
    ...    | 设置BCall号码 | 13012345678 |
    Request Tsp Config    BCALL_NUMBER_REQ    ${number}

设置ICall号码
    [Arguments]    ${number}
    [Documentation]    设置I-Call号码
    ...
    ...    :param number: 号码
    ...
    ...    Example:
    ...    | 设置ICall号码 | 13012345678 |
    Request Tsp Config    ICALL_NUMBER_REQ    ${number}

设置ECall使能
    [Arguments]    ${status}
    [Documentation]    设置E-Call使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置ECall使能 | True |
    Request Tsp Config    ECALL_ENABLE_REQ    ${status}

设置BCall使能
    [Arguments]    ${status}
    [Documentation]    设置B-Call使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置BCall使能 | True |
    Request Tsp Config    BCALL_ENABLE_REQ    ${status}

设置ICall使能
    [Arguments]    ${status}
    [Documentation]    设置I-Call使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置ICall使能 | True |
    Request Tsp Config    ICALL_ENABLE_REQ    ${status}

设置上行短信网关
    [Arguments]    ${host}    ${port}
    [Documentation]    设置上行短信网关
    ...
    ...    :param host: \ 主机名
    ...
    ...    :param port: \ 端口号
    ...
    ...    Example:
    ...    | 设置上行短信网关 | test.mosquitto.org:8883 |
    Request Tsp Config    SMS_GATE_NUMBER_UPLOAD_REQ    ${host}:${port}

设置下行短信网关
    [Arguments]    ${host}    ${port}
    [Documentation]    设置下行短信网关
    ...
    ...    :param host: 主机名
    ...
    ...    :param port: 端口号
    ...
    ...    Example:
    ...    | 设置下行短信网关 | test.mosquitto.org:8883 |
    Request Tsp Config    SMS_GATE_NUMBER_DOWNLOAD_REQ    ${host}:${port}

设置Datamining上传频率
    [Arguments]    ${freq}
    [Documentation]    设置Datamining上传频率
    ...
    ...    :param freq: 上传频率
    ...
    ...    Example:
    ...    | 设置Datamining上传频率 | 30 |
    Request Tsp Config    DATAMINING_UPLOAD_FREQUENCY_REQ    ${freq}

设置Vehicle上传频率
    [Arguments]    ${freq}
    [Documentation]    设置Vehicle上传频率
    ...
    ...    :param freq: 上传频率
    ...
    ...    Example:
    ...    | 设置Vehicle上传频率 | 30 |
    Request Tsp Config    VEHICLE_STATUS_UPLOAD_FREQUENCY_REQ    ${freq}

设置点火熄火状态上传使能
    [Arguments]    ${status}
    [Documentation]    设置点火熄火上传状态使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置点火熄火上传状态使能 | True |
    Request Tsp Config    IGNITION_BLOWOUT_UPLOAD_ENABLE_REQ    ${status}

设置告警信息上传使能
    [Arguments]    ${status}
    [Documentation]    设置告警信息上传使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置告警信息上传使能 | True |
    Request Tsp Config    UPLOAD_ALERT_ENABLE_REQ    ${status}

设置Datamining使能
    [Arguments]    ${status}
    [Documentation]    设置Datamining使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置Datamining使能 | True |
    Request Tsp Config    DATAMING_ENABLE_REQ    ${status}

设置追踪功能使能
    [Arguments]    ${status}
    [Documentation]    设置追踪功能使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置追踪功能使能 | True |
    Request Tsp Config    SVT_ENABLE_REQ    ${status}

设置电子围栏功能使能
    [Arguments]    ${status}
    [Documentation]    设置电子围栏功能使能
    ...
    ...    :param status: 是否使能
    ...
    ...    Example:
    ...    | 设置电子围栏功能使能 | True |
    Request Tsp Config    ELETRONIC_DEFENSE_ENABLE_REQ    ${status}

设置异动拖车触发阀值
    [Arguments]    ${status}
    [Documentation]    设置异动拖车G-Sensor触发阀值
    ...
    ...    :param threshold: 触发阀值
    ...
    ...    Example:
    ...    | 设置异动拖车触发阀值 | threshold |
    Request Tsp Config    ABNORMAL_MOVE_THRESHOLD_VALUE_REQ    ${status}

设置追踪上传频率
    [Arguments]    ${freq}
    [Documentation]    设置追踪上传频率
    ...
    ...    :param freq: 频率
    ...
    ...    Example:
    ...    | 设置追踪上传频率 | freq |
    Request Tsp Config    TRACKING_DATA_FREQUENCY_REQ    ${freq}

获取MQTT服务器
    [Arguments]    ${expected}
    [Documentation]    获取MQTT服务器
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取MQTT服务器 | expected=test.mosquitto.org:8883 |
    ${retval}    Request Tsp Data    CONFIG_MQTT_SERVER_ADDR_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取MQTT主题
    [Arguments]    ${expected}
    [Documentation]    获取MQTT主题
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取MQTT主题 | expected=device/gate/bussiness |
    ${retval}    Request Tsp Data    CONFIG_MQTT_SERVER_TOPIC_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取备用MQTT服务器
    [Arguments]    ${expected}
    [Documentation]    获取备用MQTT服务器
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取备用MQTT服务器 | expected=test.mosquitto.org:8883 |
    ${retval}    Request Tsp Data    CONFIG_MQTT_KEY_BUSINESS_SERVER_ADDR_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取备用MQTT主题
    [Arguments]    ${expected}
    [Documentation]    获取备用MQTT主题
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取备用MQTT主题 | expected=device/gate/bussiness |
    ${retval}    Request Tsp Data    CONFIG_MQTT_KEY_BUSINESS_SERVER_TOPIC_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取ECall号码
    [Arguments]    ${expected}
    [Documentation]    获取ECall号码
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取ECall号码 | expected=13612345678 |
    ${retval}    Request Tsp Data    CONFIG_ECALL_NUMBER_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取BCall号码
    [Arguments]    ${expected}
    [Documentation]    获取BCall号码
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取BCall号码 | expected=13612345678 |
    ${retval}    Request Tsp Data    CONFIG_BCALL_NUMBER_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取ICall号码
    [Arguments]    ${expected}
    [Documentation]    获取ICall号码
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取ICall号码 | expected=13612345678 |
    ${retval}    Request Tsp Data    CONFIG_ICALL_NUMBER_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取ECall使能
    [Arguments]    ${expected}
    [Documentation]    获取ECall使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取ECall使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_ECALL_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取BCall使能
    [Arguments]    ${expected}
    [Documentation]    获取BCall使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取BCall使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_BCALL_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取ICall使能
    [Arguments]    ${expected}
    [Documentation]    获取ICall使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取ICall使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_ICALL_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取上行短信网关
    [Arguments]    ${expected}
    [Documentation]    获取上行短信网关
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取上行短信网关 | expected=test.mosquitto.org:8883 |
    ${retval}    Request Tsp Data    CONFIG_SMS_GATE_NUMBER_UPLOAD_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取下行短信网关
    [Arguments]    ${expected}
    [Documentation]    获取下行短信网关
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取下行短信网关 | expected=test.mosquitto.org:8883 |
    ${retval}    Request Tsp Data    CONFIG_SMS_GATE_NUMBER_DOWNLOAD_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取Datamining上传频率
    [Arguments]    ${expected}
    [Documentation]    获取Datamining上传频率
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取Datamining上传频率 | expected=30 |
    ${retval}    Request Tsp Data    CONFIG_DATAMINING_UPLOAD_FREQUENCY_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取Vehicle上传频率
    [Arguments]    ${expected}
    [Documentation]    获取Vehicle上传频率
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取Vehicle上传频率 | expected=30 |
    ${retval}    Request Tsp Data    CONFIG_VEHICLE_STATUS_UPLOAD_FREQUENCY_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取点火熄火状态上传使能
    [Arguments]    ${expected}
    [Documentation]    获取点火熄火状态上传使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取点火熄火状态上传使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_IGNITION_BLOWOUT_UPLOAD_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取告警信息上传使能
    [Arguments]    ${expected}
    [Documentation]    获取告警信息上传使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取告警信息上传使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_UPLOAD_ALERT_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取Datamining使能
    [Arguments]    ${expected}
    [Documentation]    获取Datamining使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取Datamining使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_DATAMING_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取追踪功能使能
    [Arguments]    ${expected}
    [Documentation]    获取追踪功能使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取追踪功能使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_SVT_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取电子围栏功能使能
    [Arguments]    ${expected}
    [Documentation]    获取电子围栏功能使能
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取电子围栏功能使能 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_ELETRONIC_DEFENSE_ENABLE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取异动拖车触发阀值
    [Arguments]    ${expected}
    [Documentation]    获取异动拖车触发阀值
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取异动拖车触发阀值 | expected=True |
    ${retval}    Request Tsp Data    CONFIG_ABNORMAL_MOVE_THRESHOLD_VALUE_RESP
    Should Be Equal As Strings    ${retval}    ${expected}

获取追踪上传频率
    [Arguments]    ${expected}
    [Documentation]    获取追踪上传频率
    ...
    ...    :param expected: 预期值
    ...
    ...    Example:
    ...    | 获取追踪上传频率 | expected=5 |
    ${retval}    Request Tsp Data    CONFIG_TRACKING_DATA_FREQUENCY_RESP
    Should Be Equal As Strings    ${retval}    ${expected}
