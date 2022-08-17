*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/系统管理/系统管理Xpath.py
Resource          数据备份-resource.robot
Resource          ../../通用方法.robot

*** Keywords ***
创建备份
    等待element元素可见    ${创建备份按钮}
    sleep    0.5
    Click button    ${创建备份按钮}
    sleep    3
    Click element    ${确定创建按钮}

设置自动备份
    等待element元素可见    ${设置自动备份按钮}
    sleep    0.5
    Click Button    ${设置自动备份按钮}
    sleep    3
    Click element    ${设置自动备份确定按钮}

下载备份
    等待element元素可见    ${下载备份按钮}
    sleep    0.5
    Click element    ${下载备份按钮}

删除备份
    等待element元素可见    ${删除备份按钮}
    sleep    0.5
    Click element    ${删除备份按钮}
    sleep    0.5
    Click element    ${确认删除备份按钮}

批量删除备份
    sleep    5
    Click element    ${一条备份数据}
    sleep    0.5
    Click Button    ${批量删除备份按钮}
    sleep    0.5
    Click element    ${确认批量删除备份按钮}

简单搜索备份
    等待element元素可见    ${备份简单搜索输入框}
    sleep    0.5
    input text    ${备份简单搜索输入框}    1
    sleep    0.5
    Click Button    ${备份搜索简单搜索按钮}

高级搜索备份
    等待element元素可见    ${备份搜索展开}
    sleep    0.5
    click element    ${备份搜索展开}
    sleep    0.5
    input text    ${文件名输入框}    1
    sleep    0.5
    input text    ${文件大小输入框}    1
    sleep    0.5
    Click element    ${文件创建日期}
    sleep    0.5
    Click element    ${选择创建日期本月}
    sleep    0.5
    Click button    ${备份高级搜索按钮}
