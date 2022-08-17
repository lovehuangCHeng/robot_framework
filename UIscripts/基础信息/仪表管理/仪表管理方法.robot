*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/基础信息/仪表管理.py
Resource          ../../通用方法.robot

*** Keywords ***
房间仪表新建
    [Arguments]    ${name}
    Click Element    ${房间仪表新增}
	sleep    2
	等待element元素可见    ${房间仪表房间}
    sleep    1
    Click Element    ${房间仪表房间}
    sleep    2
    Click Element    ${房间仪表列表数据}
    sleep    2
    Click Element    ${房间仪表房间列表确定}
    sleep    2
    Click Element    ${房间仪表类型}
    sleep    2
    Click Element    ${房间仪表类型数据}
    sleep    2
    Input Text    ${房间仪表名称}    ${name}
    sleep    2
    Input Text    ${房间仪表初始读数}    0
    sleep    2
    Input Text    ${房间仪表倍率}    1
    sleep    2
    Input Text    ${房间仪表最大读数}    9999
    sleep    2
    Click Element    ${房间仪表初始日期}
    sleep    2
    等待element元素可见    ${房间仪表选择日期}
    sleep    2
    Click Element    ${房间仪表选择日期}
    sleep    2
    Click Element    ${房间仪表保存}
    sleep    2
	断言值包含    ${房间仪表断言}	添加房间仪表成功
	sleep    2
	
房间仪表编辑
	等待element元素可见    ${仪表房间列表}
    sleep    1
    Click Element    ${仪表房间列表}
    sleep    2
    Click Element    ${仪表编辑}
    sleep    2
    Click Element    ${房间仪表保存}
    sleep    2
	断言值包含    ${房间仪表断言}	更新
	sleep    2
	
房间仪表搜索
    [Arguments]    ${name}
	等待element元素可见    ${仪表搜索框}
    sleep    1
    Input Text    ${仪表搜索框}    ${name}
    sleep    2
    Click Element    ${仪表搜索按钮}
    sleep    2

房间仪表删除方法
	等待element元素可见    ${仪表房间列表}
    sleep    1
    Click Element    ${仪表房间列表}
    sleep    2
    Click Element    ${仪表删除}
    sleep    2
    Click Element    ${确认删除按钮}
    sleep    2
	断言值包含    ${房间仪表断言}	删除成功
	sleep    2
	
仪表高级搜索方法
	等待element元素可见    ${仪表向下展开按钮}
    sleep    1
    Click Element    ${仪表向下展开按钮}
    sleep    2
    Click Element    ${仪表高级搜索按钮}
    sleep    2
    Click Element    ${仪表向上展开按钮}
    sleep    2

房间仪表换表
	等待element元素可见    ${仪表房间列表}
    sleep    1
    Click Element    ${仪表房间列表}
    sleep    2
    Click Element    ${仪表换表}
    sleep    2
	等待element元素可见    ${换表取消按钮}
    sleep    1
    Click Element    ${换表取消按钮}
    sleep    2

房间仪表批量添加
	等待element元素可见    ${仪表房间列表}
    sleep    1
    Click Element    ${仪表房间列表}
    sleep    2
    Click Element    ${房间仪表批量添加}
    sleep    2
	等待element元素可见    ${房间仪表批量添加取消}
    sleep    1
    Click Element    ${房间仪表批量添加取消}
    sleep    2

公摊仪表新建
    [Arguments]    ${name}
	等待element元素可见    ${仪表新建}
    sleep    1
    Click Element    ${仪表新建}
    sleep    2
	等待element元素可见    ${公摊仪表名称}
    sleep    1
    Input Text    ${公摊仪表名称}    ${name}
    sleep    2
    Click Element    ${选择管理区}
    sleep    2
    Click Element    ${选择管理区数据}
    sleep    2
    Click Element    ${公摊仪表类型公摊表}
    sleep    2
    Click Element    ${公摊仪表种类}
    sleep    2
    Click Element    ${仪表种类数据}
    sleep    2
    Click Element    ${房间仪表保存}
    sleep    2
	断言值包含    ${房间仪表断言}	创建公摊仪表成功
	sleep    2
	
公摊仪表新建1
    [Arguments]    ${name}
	等待element元素可见    ${仪表新建}
    sleep    1
    Click Element    ${仪表新建}
    sleep    2
    Input Text    ${公摊仪表名称}    ${name}
    sleep    2
    Click Element    ${选择管理区}
    sleep    2
    Click Element    ${选择管理区数据}
    sleep    2
    Click Element    ${公摊仪表类型公摊表}
    sleep    2
    Click Element    ${公摊仪表种类}
    sleep    2
    Click Element    ${仪表种类数据}
    sleep    2
    Click Element    ${房间仪表保存}
    sleep    2
	
房间仪表名称变量
    ${FjYb}    按时间自定义变量    水表
	Set Suite Variable    ${FjYb}
    [Return]    ${FjYb}
	
公摊仪表名称变量
    ${GTYb}    按时间自定义变量    水表
	Set Suite Variable    ${GTYb}
    [Return]    ${GTYb}
