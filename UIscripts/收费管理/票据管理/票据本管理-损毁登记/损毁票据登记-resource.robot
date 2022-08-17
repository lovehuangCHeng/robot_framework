*** Settings ***
Variables         ../../../../config/elements/收费管理/票据Xpath.py
Library           Selenium2Library
Resource          ../../../通用方法.robot

*** Keywords ***
新增损毁票据
    sleep    3
    Click Button    ${新增损毁票据按钮 }
    等待element元素可见    ${请选择票据本下拉}
    sleep    2
    Click Element    ${请选择票据本下拉}
    sleep    2
    input text    ${损毁票据名称 }    UITE
    等待element元素可见    ${下拉选择票据本}
    sleep    2
    Click Element    ${下拉选择票据本}
    sleep    2
    input text    ${损毁票据号}    222
    sleep    2
    Click Button    ${保存损毁票据号}
    等待element元素可见    ${成功断言}
    log    测试通过

删除损毁票据
    sleep    3
    Click Element    ${高级搜索}
    sleep    3
    等待element元素可见    ${请选择票据本下拉}
    sleep    2
    Click Element    ${请选择票据本下拉}
    sleep    2
    input text    ${损毁票据名称 }    UITE
    等待element元素可见    ${下拉选择票据本}
    sleep    2
    Click Element    ${下拉选择票据本}
    sleep    2
    Click Button    ${确认搜索按钮}
    等待element元素可见    ${勾选可见}
    sleep    2
    Click Element    ${勾选票据}
    sleep    2
    click button    ${删除损毁票据按钮}
    sleep    2
    Click Button    ${确认删除}
    等待element元素可见    ${成功断言}
    log    测试通过
