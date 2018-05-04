*** Settings ***
Library           TBoxLibrary

*** Keywords ***
设置OTA命令
    [Arguments]    ${ver}    ${addr}    ${checksum}
    [Documentation]    设置指定OTA信息
    ...
    ...    :param ver: 软件版本号
    ...
    ...    :param addr: 下载地址
    ...
    ...    Example:
    ...    | 设置指定OTA信息 | FULL.DX03.0002.0000.0005.zip | 120.77.44.181 |
    Request Ota Cmd    ${ver}    ${addr}    ${checksum}

等待OTA结果
    [Arguments]    ${expected}=UPGRADE_SUCCESSED
    [Documentation]    :param expected: 返回期望值
    ...
    ...    Example:
    ...    | 等待OTA结果 | expected=UPGRADE_SUCCESSED |
    ...    | 等待OTA结果 | expected=UPGRADE_FAILED |
    ...    | 等待OTA结果 | expected=DOWNLOAD_FILE_FAILED |
    [Timeout]    15 minutes
    ${retval}=    Wait Until Ota Result    ${expected}
    Should Be Equal As Strings    ${retval}    True
