*** Settings ***
Library           TBoxLibrary

*** Keywords ***
设置指定OTA信息
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
