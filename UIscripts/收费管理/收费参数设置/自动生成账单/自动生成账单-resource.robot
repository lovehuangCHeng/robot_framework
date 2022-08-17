*** Settings ***
Variables         ../../../../config/elements/收费管理/收费Xpath.py
Library           Selenium2Library
Resource          ../../../通用方法.robot

*** Keywords ***
自动生成账单
    等待element元素可见    ${每月自动生成日1}
    sleep    2
    Click Element    ${每月自动生成日1}
    等待element元素可见    ${生成日1选择5号}
    sleep    1
    Click Element    ${生成日1选择5号}
    sleep    1
    Click Element    ${每月自动生成日2}
    等待element元素可见    ${生成日2选择5号}
    sleep    1
    Click Element    ${生成日2选择5号}
    等待element元素可见    ${预存款自动冲抵日}
    sleep    1
    Click Element    ${预存款自动冲抵日}
    等待element元素可见    ${自动冲抵日选择5号}
    sleep    1
    Click Element    ${自动冲抵日选择5号}
    sleep    1
    Click Button    ${保存自动生成账单}
    sleep    1
    断言存在    ${配置成功提示}
    sleep    1
    Click Button    ${配置成功页面确定}
