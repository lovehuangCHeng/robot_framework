*** Settings ***
Variables         ../../../../config/elements/收费管理/票据Xpath.py
Library           Selenium2Library
Resource          ../../../通用方法.robot

*** Keywords ***
新增票据本
    ${PJ}    Evaluate    random.randint(0, 999)    random
    ${PJNAME}    Catenate    SEPARATOR=    ${PJ}    UITE票据
    Set Suite Variable    ${PJNAME}
    等待element元素可见    ${新建票据管理}
    sleep    2
    Click Button    ${新建票据管理}
    等待element元素可见    ${票据名称输入框}
    sleep    3
    Input Text    ${票据名称输入框}    ${PJNAME}
    sleep    3
    Click Element    ${票据管理区下拉}
    等待element元素可见    ${选择票据管理区}
    sleep    2
    Click Element    ${选择票据管理区}
    sleep    2
    Click Button    ${保存票据}
    等待element元素可见    ${成功断言}
    log    测试通过

编辑票据本
    等待element元素可见    ${高级搜索}
    sleep    2
    Click Element    ${高级搜索}
    sleep    3
    等待element元素可见    ${票据名称}
    sleep    3
    input text    ${票据名称}    ${PJNAME}
    Click Button    ${确认搜索按钮}
    sleep    3
    等待element元素可见    ${勾选可见}
    Click Element    ${勾选票据}
    sleep    3
    Click Button    ${编辑票据}
    等待element元素可见    ${票据名称输入框}
    Click Button    ${保存票据}
    等待element元素可见    ${成功断言}
    log    测试通过

标记为已用完
    等待element元素可见    ${高级搜索}
    sleep    3
    Click Element    ${高级搜索}
    sleep    3
    等待element元素可见    ${票据名称}
    sleep    3
    input text    ${票据名称}    ${PJNAME}
    Click Button    ${确认搜索按钮}
    sleep    3
    等待element元素可见    ${勾选可见}
    Click Element    ${勾选票据}
    sleep    3
    Click Button    ${标记为已用完}
    等待element元素可见    ${成功断言}
    log    测试通过

查看使用明细
    等待element元素可见    ${高级搜索}
    sleep    3
    Click Element    ${高级搜索}
    sleep    3
    等待element元素可见    ${票据名称}
    sleep    3
    input text    ${票据名称}    ${PJNAME}
    Click Button    ${确认搜索按钮}
    sleep    3
    等待element元素可见    ${勾选可见}
    Click Element    ${勾选票据}
    sleep    3
    Click Button    ${查看使用明细}
    sleep    3

删除票据本
    等待element元素可见    ${高级搜索}
    sleep    3
    Click Element    ${高级搜索}
    sleep    3
    等待element元素可见    ${票据名称}
    sleep    3
    input text    ${票据名称}    ${PJNAME}
    Click Button    ${确认搜索按钮}
    sleep    3
    等待element元素可见    ${勾选可见}
    Click Element    ${勾选票据}
    sleep    3
    Click Button    ${删除票据 }
    sleep    3
    Click Button    ${确认删除}
    等待element元素可见    ${删除成功 }
    log    测试通过
