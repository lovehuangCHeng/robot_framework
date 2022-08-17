*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/系统管理/系统管理Xpath.py
Resource          ../../通用方法.robot

*** Keywords ***
系统初始化-跳过
    click element    ${下载房间客户数据模板}
    sleep    2
    click button    ${跳过}
    sleep    2
    click element    ${下载房间仪表数据模板}
    sleep    2
    click button    ${跳过}
    sleep    2
    click element    ${下载车位数据模板}
    sleep    2
    click button    ${跳过}
    sleep    2
    click button    ${跳过}
    sleep    2
    click element    ${下载房间历史账单数据模板 }
    sleep    2
    click element    ${导入车位历史账单Tab}
    sleep    2
    click element    ${下载车位历史账单数据模板}
    sleep    2
    click button    ${跳过}
    sleep    2
    click element    ${下载房间收费记录数据模板}
    sleep    2
    click element    ${创建车位收费记录Tab}
    sleep    2
    click element    ${下载车位收费记录数据模板}
    sleep    2
    click button    ${跳过}
    sleep    2
    click button    ${初始化完成确定}
    sleep    2
    click button    ${初始化完成重新开启}
