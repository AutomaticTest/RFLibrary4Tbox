*** Settings ***
Library           TBoxLibrary

*** Keywords ***
远程诊断
    [Arguments]    ${expected}=True
    [Documentation]    :param expected: 期望返回值
    ...
    ...    Example:
    ...    | Comment | 远程诊断 |
    ...    | 远程诊断 | expected=True |
    ${retval}=    Request Remote Diagnosis
    Should Be Equal As Strings    ${retval}    ${expected}
