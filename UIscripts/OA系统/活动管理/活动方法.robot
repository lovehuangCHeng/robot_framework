*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/OA系统/活动人事.py
Resource          ../../通用方法.robot

*** Keywords ***
活动类别新建
    [Arguments]    ${name}
    ${testdata}    Time Random    ${name}
    Click Element    ${新建活动}
    sleep    2
	等待元素可用	${活动类别}
	sleep    1
    Click Element    ${活动类别}
    sleep    2
    Click Element    ${活动类别添加}
    sleep    2
    Input Text    ${活动类别名称}    ${testdata}
    sleep    2
    Click Element    ${活动类别保存}
    sleep    2

活动新建
    [Arguments]    ${test}
    Click Element    ${新建活动}
    sleep    2
	等待元素可用	${活动类别}
	sleep    1
    Click Element    ${活动类别}
    sleep    2
    Click Element    ${活动类别数据}
    sleep    2
    Click Element    ${发送范围}
    sleep    2
    Click Element    ${发送范围数据选择}
    sleep    2
    Input Text    ${活动主题}    ${test}
    sleep    2
    Input Text    ${活动简介}    ${test}
    sleep    2
    Input Text    ${活动地址}    ${test}
    sleep    2
    Input Text    ${活动内容}    ${test}
    sleep    2
    Click Element    ${活动时间}
    sleep    2
    Click Element    ${开始时间}
    sleep    2
    Click Element    ${结束时间}
    sleep    2
    Click Element    ${活动报名时间}
    sleep    2
    Click Element    ${开始时间}
    sleep    2
    Click Element    ${结束时间}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

活动搜索
    [Arguments]    ${testdata}
    Input Text    ${搜索活动框}    ${testdata}
    sleep    2
    Click Element    ${搜索活动按钮}
    sleep    2

活动编辑
    [Arguments]    ${testdata}
    活动搜索    ${testdata}
    Click Element    ${编辑活动}
    sleep    2
    Click Element    ${活动保存}
    sleep    2

活动查看
    [Arguments]    ${testdata}
    活动搜索    ${testdata}
    Click Element    ${查看活动}
    sleep    2

活动发布
    [Arguments]    ${testdata}
    活动搜索    ${testdata}
    Click Element    ${发布活动}
    sleep    2

活动下线
    [Arguments]    ${testdata}
    活动搜索    ${testdata}
    Click Element    ${下线活动}
    sleep    2

活动删除
    [Arguments]    ${testdata}
    活动搜索    ${testdata}
    Click Element    ${删除活动}
    sleep    2
    Click Element    ${确认删除按钮}
    sleep    2

活动主题变量
    ${testdata}    Time Random    活动主题
    Set Suite Variable    ${testdata}
    [Return]    ${testdata}
