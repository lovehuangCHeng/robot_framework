*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Variables         ../../../config/elements/物业管理/巡更管理.py

*** Keywords ***
新建巡更点
    [Arguments]    ${test}    ${testcode}
    Click Element    ${新建巡更点}
    sleep    1
    等待元素可用    ${管理区}
    sleep    1
    Click Element    ${管理区}
    sleep    1
    Click Element    ${管理区数据}
    sleep    1
    Input Text    ${巡更点名称}    ${test}
    sleep    1
    Input Text    ${巡更点编码}    ${testcode}
    sleep    1
    Input Text    ${检查要点}    ${test}
    sleep    1
    Click Element    ${签到NFC}
    sleep    1
    Click Element    ${签到蓝牙}
    sleep    1
    Click Element    ${保存}
    sleep    1

搜索巡更点
    [Arguments]    ${testdata}
    Input Text    ${搜索框}    ${testdata}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

编辑巡更点
    Click Element    ${编辑巡更点}
    sleep    1
    等待元素可用    ${保存}
    sleep    1
    Click Element    ${保存}
    sleep    1

查看二维码巡更点
    Click Element    ${查看二维码巡更点}
    sleep    1
    等待元素可用    ${关闭二维码页面}
    sleep    1
    Click Element    ${关闭二维码页面}
    sleep    1

作废_恢复巡更点
    Click Element    ${作废巡更点}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
    Click Element    ${作废巡更点}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

删除巡更点
    [Arguments]    ${testdata}
    搜索巡更点    ${testdata}
    Click Element    ${删除巡更点}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

巡更点变量
    ${testdata}    Time Random    巡更点
    Set Suite Variable    ${testdata}
    [Return]    ${testdata}

巡更路线变量
    ${testluxian}    Time Random    巡更路线
    Set Suite Variable    ${testluxian}
    [Return]    ${testluxian}

数字变量
    ${testno}    Time Random    11
    Set Suite Variable    ${testno}
    [Return]    ${testno}

巡更计划变量
    ${testjihua}    Time Random    巡更计划
    Set Suite Variable    ${testjihua}
    [Return]    ${testjihua}

巡更计划变量1
    ${testjihua1}    Time Random    巡更计划
    Set Suite Variable    ${testjihua1}
    [Return]    ${testjihua1}

新建巡更路线
    [Arguments]    ${test}    ${testno}
    Click Element    ${新建巡更路线}
    sleep    1
    等待元素可用    ${管理区_巡更路线}
    sleep    1
    Click Element    ${管理区_巡更路线}
    sleep    1
    Click Element    ${管理区数据}
    sleep    1
    Input Text    ${巡更路线名称}    ${test}
    sleep    1
    Input Text    ${巡更路线编码}    ${testno}
    sleep    1
    Input Text    ${巡更路线备注}    ${test}
    sleep    1
    Click Element    ${添加巡更点}
    sleep    1
    Click Element    ${选择巡更点}
    sleep    1
    Click Element    ${巡更点确定}
    sleep    1
    Click Element    ${默认签到方式}
    sleep    1
    Click Element    ${默认定点自拍}
    sleep    1
    Click Element    ${保存}
    sleep    1

搜索巡更路线
    [Arguments]    ${testdata}
    Input Text    ${搜索框}    ${testdata}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

删除巡更路线
    [Arguments]    ${testdata}
    搜索巡更路线    ${testdata}
    Click Element    ${删除巡更路线}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

编辑巡更路线
    Click Element    ${编辑巡更路线}
    sleep    1
    等待元素可用    ${保存}
    sleep    1
    Click Element    ${保存}
    sleep    1

作废_恢复巡更路线
    Click Element    ${作废巡更路线}
    sleep    1
    Click Element    ${确认删除}
    sleep    1
    Click Element    ${作废巡更路线}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

查看巡更路线二维码
    Click Element    ${查看二维码巡更路线}
    sleep    1
    等待元素可用    ${关闭二维码页面}
    sleep    1
    Click Element    ${关闭二维码页面}
    sleep    1

巡更计划新建
    [Arguments]    ${test}
    Click Element    ${新建巡更计划}
    sleep    1
    等待元素可用    ${管理区_计划}
    sleep    1
    Click Element    ${管理区_计划}
    sleep    1
    Click Element    ${管理区_计划数据}
    sleep    1
    Input Text    ${计划名称}    ${test}
    sleep    1
    Click Element    ${巡查路线}
    sleep    1
    Click Element    ${巡更路线数据}
    sleep    1
    Input Text    ${巡查次数}    1
    sleep    1
    Click Element    ${经办人}
    sleep    1
    Click Element    ${经办人数据}
    sleep    1
    Click Element    ${确定经办人}
    sleep    1
    Click Element    ${巡更计划开始时间}
    sleep    1
    Input Text    ${输入开始时间}    06:00
    sleep    1
    Click Element    ${巡更计划结束时间}
    sleep    1
    Input Text    ${输入结束时间}    18:00
    sleep    1
    Click Element    ${保存}
    sleep    1

巡更计划搜索
    [Arguments]    ${testdata}
    等待元素可用    ${搜索框}
    sleep    1
    Input Text    ${搜索框}    ${testdata}
    sleep    1
    Click Element    ${搜索按钮}
    sleep    1

巡更计划编辑
    [Arguments]    ${testdata}
    巡更计划搜索    ${testdata}
    Click Element    ${巡更计划编辑}
    sleep    1
    Click Element    ${保存}
    sleep    1

巡更计划查看
    Click Element    ${巡更计划查看}
    sleep    1

巡更计划高级搜索
    等待元素可用    ${高级搜索}
    sleep    1
    Click Element    ${高级搜索}
    sleep    1
    Click Element    ${管理区_高级搜索}
    sleep    1
    Click Element    ${管理区_计划数据}
    sleep    1
    Click Element    ${高级搜索按钮}
    sleep    1

巡更计划复制
    [Arguments]    ${testdata}    ${testdata1}
    巡更计划搜索    ${testdata}
    等待元素可用    ${巡更计划复制}
    sleep    1
    Click Element    ${巡更计划复制}
    sleep    1
    Input Text    ${计划名称}    ${testdata1}
    sleep    1
    Click Element    ${保存}
    sleep    1

巡更计划删除
    [Arguments]    ${testdata}
    巡更计划搜索    ${testdata}
    Click Element    ${巡更计划删除}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

巡更计划启用
    [Arguments]    ${testdata}
    巡更计划搜索    ${testdata}
    Click Element    ${巡更计划启用}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

巡更计划停用
    [Arguments]    ${testdata}
    巡更计划搜索    ${testdata}
    Click Element    ${巡更计划停用}
    sleep    1
    Click Element    ${确认删除}
    sleep    1

巡更任务搜索
    等待元素可用    ${管理区_任务}
    sleep    1
    Click Element    ${管理区_任务}
    sleep    1
    Click Element    ${管理区_任务数据}
    sleep    1
    Click Element    ${任务查询}
    sleep    1

巡更任务高级搜索
    等待元素可用    ${更多}
    sleep    1
    Click Element    ${更多}
    sleep    1
    Click Element    ${计划时间}
    sleep    1
    Click Element    ${开始时间}
    sleep    1
    Click Element    ${结束时间}
    sleep    1
    Click Element    ${任务查询}
    sleep    1

巡更任务查看详情
    等待元素可用    ${巡更任务查看}
    sleep    1
    Click Element    ${巡更任务查看}
    sleep    1

巡更任务添加备注
    [Arguments]    ${testdata}
    等待元素可用    ${待分派状态}
    sleep    1
    Click Element    ${待分派状态}
    sleep    1
    Click Element    ${巡更任务添加备注}
    sleep    1
    Input Text    ${添加备注信息}    ${testdata}
    sleep    1
    Click Element    ${保存}
    sleep    1

巡更任务分配
    等待元素可用    ${待分派状态}
    sleep    1
    Click Element    ${待分派状态}
    sleep    1
    Click Element    ${巡更任务分派}
    sleep    1
    Click Element    ${巡更人员选择框}
    sleep    1
    Click Element    ${巡更人员数据}
    sleep    1
    Click Element    ${保存}
    sleep    1

巡更任务状态切换
    等待元素可用    ${未开始状态}
    sleep    1
    Click Element    ${未开始状态}
    sleep    1
    Click Element    ${待处理状态}
    sleep    1
    Click Element    ${处理中状态}
    sleep    1
    Click Element    ${已过期状态}
    sleep    1
    Click Element    ${正常完成状态}
    sleep    1
    Click Element    ${超时完成状态}
    sleep    1

巡更问题列表
    等待元素可用    ${提交日期}
    sleep    1
    Click Element    ${提交日期}
    sleep    1
    Click Element    ${开始时间}
    sleep    1
    Click Element    ${结束时间}
    sleep    1
    Click Element    ${问题查询}
    sleep    1

巡更问题列状态切换
    等待元素可用    ${已解决状态}
    sleep    1
    Click Element    ${已解决状态}
    sleep    1
    Click Element    ${未解决状态}
    sleep    1
    Click Element    ${问题查询}
    sleep    1
