*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/OA系统/活动人事.py
Resource          ../../通用方法.robot

*** Keywords ***
考勤管理新建
    [Arguments]    ${test}
    等待元素可用    ${考勤新建}
    sleep    1
    Click Element    ${考勤新建}
    sleep    1
    等待元素可用    ${职员姓名}
    sleep    1
    Input Text    ${职员姓名}    ${test}
    sleep    1
    Click Element    ${职员性别}
    sleep    1
    Click Element    ${活动保存}
    sleep    1

考勤管理搜索
    [Arguments]    ${testdata}
    等待元素可用    ${考勤列表数据}
    sleep    1
    Input Text    ${职员搜索框}    ${testdata}
    sleep    2
    Click Element    ${职员搜索按钮}
    sleep    2

考勤记录添加
    [Arguments]    ${hours}
    Click Element    ${考勤类型}
    sleep    2
    Click Element    ${出差}
    sleep    2
    Input Text    ${小时}    ${hours}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

考勤管理添加
    [Arguments]    ${name}    ${hours}
    考勤管理搜索    ${name}
    Click Element    ${职员添加}
    sleep    2
    考勤记录添加    ${hours}

进入查看页面
    [Arguments]    ${name}
    考勤管理搜索    ${name}
    Click Element    ${职员查看}
    sleep    2

考勤查看编辑
    [Arguments]    ${name}
    进入查看页面    ${name}
    Click Element    ${职员查看页面编辑}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

考勤查看删除
    [Arguments]    ${name}
    进入查看页面    ${name}
    Click Element    ${职员查看页面删除}
    sleep    2
    Click Element    ${确认删除按钮}
    sleep    2

考勤查看导出
    [Arguments]    ${name}
    进入查看页面    ${name}
    sleep    2

考勤管理高级搜索查询
    [Arguments]    ${name}
    Click Element    ${考勤管理高级搜索}
    sleep    2
    Input Text    ${职员名称}    ${name}
    sleep    2
    Click Element    ${高级搜索按钮}
    sleep    2

新建员工变量
    ${testdata}    Time Random    员工
    Set Suite Variable    ${testdata}
    [Return]    ${testdata}
