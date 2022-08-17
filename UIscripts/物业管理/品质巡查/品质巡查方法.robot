*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Variables         ../../../config/elements/物业管理/品质巡查Xpath.py

*** Keywords ***
新建巡查类别
    [Arguments]    ${name}
    ###############巡查类别方法###############
    Click Button    ${新建按钮}
    sleep    1
    等待元素可用    ${巡查类别名称输入框}
    sleep    1
    Input Text    ${巡查类别名称输入框}    ${name}
    sleep    1
    Input Text    ${巡查类别说明}    ${name}
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

搜索巡查类别
    [Arguments]    ${name}
	等待元素可用    ${普通搜索框}
    Input Text    ${普通搜索框}    ${name}
    sleep    1
    Click Element    ${普通搜索}
    sleep    1

编辑巡查类别
    Click Element    ${编辑按钮}
    sleep    1
    等待元素可用    ${保存按钮}
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

禁用启用巡查类别
    Click Element    ${禁用按钮}
    sleep    1
    等待元素可用    ${禁用二次确认按钮}
    sleep    1
    Click Button    ${禁用二次确认按钮}
    等待元素可用    ${启用按钮}
    sleep    1
    Click Element    ${启用按钮}
    sleep    1

删除巡查类别
    Click Element    ${删除按钮}
    等待元素可用    ${删除二次确认按钮}
    sleep    1
    Click Button    ${删除二次确认按钮}
    sleep    1
    ###############巡查事项方法###############

新建品质巡查事项
    [Arguments]    ${name}
    Click Button    ${新建按钮}
    sleep    1
    等待元素可用    ${巡查事项名称输入框}
    sleep    1
    Input Text    ${巡查事项名称输入框}    ${name}
    sleep    1
    Click Element    ${巡查类别下拉}
    等待元素可用    ${选择第一个类别}
    sleep    1
    Click Element    ${选择第一个类别}
    sleep    1
    等待元素可用    ${级别删除}
    Click Element    ${级别删除}
    sleep    1
    Click Element    ${级别添加}
    sleep    1
    Input Text    ${一级检查内容输入}    ${name}
    sleep    1
    Input Text    ${一级检查方法输入}    ${name}
    sleep    1
    Input Text    ${一级评分标准输入}    ${name}
    sleep    1
    Input Text    ${一级分值输入}    99
    Click Button    ${保存按钮}
    sleep    1

搜索品质巡查事项
    [Arguments]    ${name}
    Input Text    ${普通搜索框}    ${name}
    sleep    1
    Click Element    ${普通搜索}
    sleep    1

编辑品质巡查事项
    Click Element    ${编辑按钮}
    sleep    1
    等待元素可用    ${保存按钮}
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

禁用启用品质巡查事项
    等待元素可用    ${禁用按钮}
    Click Element    ${禁用按钮}
    sleep    1
    等待元素可用    ${禁用二次确认按钮}
    sleep    1
    Click Button    ${禁用二次确认按钮}
    等待元素可用    ${启用按钮}
    sleep    1
    Click Element    ${启用按钮}
    sleep    1

删除品质巡查事项
    Click Element    ${删除按钮}
    等待元素可用    ${删除二次确认按钮}
    sleep    1
    Click Button    ${删除二次确认按钮}
    sleep    1
    ###############巡查计划方法###############

新建品质巡查计划
    [Arguments]    ${name}
    Click Button    ${新建按钮}
    sleep    1
    等待元素可用    ${管理区下拉}
    Click Element    ${管理区下拉}
    等待元素可用    ${选择第一个管理区}
    sleep    1
    Click Element    ${选择第一个管理区}
    sleep    1
    Input Text    ${巡更计划名称输入框}    ${name}
    sleep    1
    Click Element    ${经办人下拉}
    等待元素可用    ${选择第一个经办人}
    sleep    1
    Click Element    ${选择第一个经办人}
    sleep    1
    Input Text    ${巡查次数输入框}    1
    等待元素可用    ${任务开始时间}
    sleep    1
    Click Element    ${任务开始时间}
    sleep    1
    Click Element    ${选择任务开始时间1}
    等待元素可用    ${任务结束时间}
    sleep    1
    Click Element    ${任务结束时间}
    sleep    1
    Click Element    ${选择任务结束时间1}
    sleep    1
    Click Element    ${巡查事项下拉}
    sleep    1
    等待元素可用    ${选择第一个巡查事项}
    Click Element    ${选择第一个巡查事项}
    sleep    1
	Click Element    ${巡查事项下拉}
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

搜索品质巡查计划
    [Arguments]    ${name}
    Input Text    ${普通搜索框}    ${name}
    sleep    1
    Click Element    ${普通搜索}
    sleep    1

编辑品质巡查计划
    Click Element    ${编辑按钮}
    sleep    1
    等待元素可用    ${保存按钮}
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

禁用启用品质巡查计划
    等待元素可用    ${启用按钮}
    sleep    1
    Click Element    ${启用按钮}
    sleep    1
    等待元素可用    ${启用二次确认按钮}
    sleep    1
    Click Button    ${启用二次确认按钮}
    sleep    1
    等待元素可用    ${停用按钮}
    sleep    1
    Click Element    ${停用按钮}
    sleep    1
    等待元素可用    ${停用二次确认按钮}
    sleep    1
    Click Button    ${停用二次确认按钮}

复制巡查计划
    [Arguments]    ${name}
    Click Element    ${复制按钮}
    等待元素可用    ${巡更计划名称输入框}
    sleep    1
    input text    ${巡更计划名称输入框}    ${name}copy
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

搜索复制的品质巡查计划
    [Arguments]    ${name}
    Input Text    ${普通搜索框}    ${name}copy
    sleep    1
    Click Element    ${普通搜索}
    sleep    1

删除复制的品质巡查计划
    Click Element    ${删除按钮}
    等待元素可用    ${删除二次确认按钮}
    sleep    1
    Click Button    ${删除二次确认按钮}
    sleep    1
    ###############巡查任务###############

新建品质巡查任务
    等待元素可用    ${新建按钮}
    sleep    1
    Click Button    ${新建按钮}
    sleep    1
    等待元素可用    ${管理区下拉}
    sleep    1
    Click Element    ${管理区下拉}
    等待元素可用    ${选择第一个管理区}
    sleep    1
    Click Element    ${选择第一个管理区}
    sleep    3
    Click Element    ${任务计划开始时间}
    sleep    1
    Click Element    ${选择开始时间}
    sleep    1
    Click Element    ${选择结束时间}
    sleep    1
    Click Element    ${确定选择日期}
    sleep    1
    Click Element    ${经办人下拉2}
    等待元素可用    ${择第一个经办人2}
    sleep    1
    Click Element    ${择第一个经办人2}
    sleep    1
    Click Element    ${巡查事项下拉2}
    等待元素可用    ${选择第一个巡查事项2}
    sleep    1
    Click Element    ${选择第一个巡查事项2}
    sleep    1
    Click Button    ${保存按钮}
    sleep    1

搜索品质巡查任务
    [Arguments]    ${name}
    等待元素可用    ${高级搜索}
    sleep    1
    Click Element    ${高级搜索}
    sleep    1
    Input Text    ${任务名称输入框}    ${name}
    sleep    1
    Click Button    ${查询按钮}
    sleep    1

分状态查询巡查任务
    等待元素可用    ${未开始状态}
    sleep    1
    Click Element    ${未开始状态}
    sleep    1
    Click Element    ${待处理状态}
    sleep    1
    Click Element    ${处理中状态}
    sleep    1
    Click Element    ${正常完成状态}
    sleep    1
    Click Element    ${正常完成状态}
    sleep    1

删除品质巡查任务
    等待元素可用    ${未开始状态}
    sleep    1
    Click Element    ${未开始状态}
    sleep    1
    Click Element    ${删除按钮}
    等待元素可用    ${删除二次确认按钮}
    sleep    1
    Click Button    ${删除二次确认按钮}
    sleep    1
    ###############巡查问题###############

巡查问题高级搜索_状态搜索
    sleep    1
    Click Button    ${查询按钮}
    sleep    1
    等待元素可用    ${全部状态}
    sleep    1
    Click Element    ${全部状态}
    sleep    1
    Click Element    ${未解决状态}
    sleep    1
    Click Element    ${已解决状态}
    sleep    1
