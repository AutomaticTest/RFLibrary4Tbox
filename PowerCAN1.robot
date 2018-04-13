*** Settings ***
Documentation     CAN 1(Power)测试套件
Test Setup        Initialize    ${DEVICE}    ${SERVER}    ${CHANNEL}    ${BAUDRATE}
Test Teardown     Uninitialize
Variables         Config.py

*** Test Cases ***
