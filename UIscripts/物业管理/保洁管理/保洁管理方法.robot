*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/物业管理/保洁巡查.py
Resource          ../../通用方法.robot

*** Keywords ***
保洁计划名称变量
    ${testdata}    Time Random    保洁计划名称
    Set Suite Variable    ${testdata}
    [Return]    ${testdata}

保洁计划名称变量1
    ${testdata1}    Time Random    保洁计划名称
    Set Suite Variable    ${testdata1}
    [Return]    ${testdata1}

保洁计划新建
    [Arguments]    ${test}
    Click Element    ${新建计划}
    sleep    2
    等待元素可用    ${管理区}
    sleep    1
    Click Element    ${管理区}
    sleep    2
    Click Element    ${管理区数据}
    sleep    2
    Input Text    ${计划名称}    ${test}
    sleep    2
    Input Text    ${巡查地点}    ${test}
    sleep    2
    Input Text    ${巡查次数}    1
    sleep    2
    Click Element    ${经办人}
    sleep    2
    Click Element    ${经办人数据}
    sleep    2
    Click Element    ${计划开始时间}
    sleep    2
    Input Text    ${输入开始时间}    00:01
    sleep    2
    Click Element    ${计划结束时间}
    sleep    2
    Input Text    ${输入结束时间}    23:58
    sleep    2
    Click Element    ${资产保存}
    sleep    2

保洁计划搜索
    [Arguments]    ${testdata}
	等待元素可用    ${搜索框}
    sleep    1
    Input Text    ${搜索框}    ${testdata}
    sleep    2
    Click Element    ${搜索按钮}
    sleep    2

保洁计划编辑
    [Arguments]    ${testdata}
    保洁计划搜索    ${testdata}
	等待元素可用    ${保洁计划编辑}
    sleep    1
    Click Element    ${保洁计划编辑}
    sleep    2
    Click Element    ${资产保存}
    sleep    2

保洁计划查看
	等待元素可用    ${保洁计划查看}
    sleep    1
    Click Element    ${保洁计划查看}
    sleep    2

保洁计划高级搜索
    Click Element    ${高级搜索}
    sleep    2
    Click Element    ${管理区}
    sleep    2
    Click Element    ${管理区数据}
    sleep    2
    Click Element    ${高级搜索按钮}
    sleep    2

保洁计划复制
    [Arguments]    ${testdata}    ${testdata1}
    保洁计划搜索    ${testdata}
	等待元素可用    ${保洁计划复制}
    sleep    1
    Click Element    ${保洁计划复制}
    sleep    2
    Input Text    ${计划名称}    ${testdata1}
    sleep    2
    Click Element    ${资产保存}
    sleep    2

保洁计划删除
    [Arguments]    ${testdata}
    保洁计划搜索    ${testdata}
	等待元素可用    ${保洁计划删除}
    sleep    1
    Click Element    ${保洁计划删除}
    sleep    2
    Click Element    ${确认删除}
    sleep    2

保洁计划启用
    [Arguments]    ${testdata}
    保洁计划搜索    ${testdata}
	等待元素可用    ${保洁计划启用}
    sleep    1
    Click Element    ${保洁计划启用}
    sleep    2
	Click Element    ${确认删除}
    sleep    2

保洁计划停用
    [Arguments]    ${testdata}
    保洁计划搜索    ${testdata}
	等待元素可用    ${保洁计划停用}
    sleep    1
    Click Element    ${保洁计划停用}
    sleep    2
	Click Element    ${确认删除}
    sleep    2
保洁任务搜索
	等待元素可用    ${管理区_任务}
    sleep    1
    Click Element    ${管理区_任务}
    sleep    2
    Click Element    ${管理区_任务数据}
    sleep    2
    Click Element    ${任务查询}
    sleep    2

保洁任务高级搜索
    [Arguments]    ${testdata}
	等待元素可用    ${更多}
    sleep    1
    Click Element    ${更多}
    sleep    2
    Click Element    ${计划时间}
    sleep    2
    Click Element    ${开始时间}
    sleep    2
    Click Element    ${结束时间}
    sleep    2
    Input Text    ${巡查地点}    ${testdata}
    sleep    2
    Click Element    ${任务查询}
    sleep    2

保洁任务查看详情
    Click Element    ${保洁任务查看}
    sleep    2

保洁任务状态切换
	等待元素可用    ${未开始状态}
    sleep    1
    Click Element    ${未开始状态}
    sleep    2
    Click Element    ${待处理状态}
    sleep    2
    Click Element    ${处理中状态}
    sleep    2
    Click Element    ${已过期状态}
    sleep    2
    Click Element    ${正常完成状态}
    sleep    2
    Click Element    ${超时完成状态}
    sleep    2

保洁任务删除
	等待元素可用    ${待处理状态}
    sleep    1
    Click Element    ${待处理状态}
    sleep    2
    Click Element    ${保洁任务删除}
    sleep    2
    Click Element    ${确认删除}
    sleep    2

保洁问题列表
	等待元素可用    ${提交日期}
    sleep    1
    Click Element    ${提交日期}
    sleep    2
    Click Element    ${开始时间}
    sleep    2
    Click Element    ${结束时间}
    sleep    2
    Click Element    ${问题查询}
    sleep    2

保洁问题列状态切换
	等待元素可用    ${已解决状态}
    sleep    1
    Click Element    ${已解决状态}
    sleep    2
    Click Element    ${未解决状态}
    sleep    2
    Click Element    ${问题查询}
    sleep    2
