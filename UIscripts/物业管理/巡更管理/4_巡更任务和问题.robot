*** Settings ***
Resource          巡更管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
查看巡更任务
    [Setup]    登录    ${巡更任务}
    巡更任务搜索
    [Teardown]    关闭浏览器

切换巡更任务状态
    [Setup]    登录    ${巡更任务}
    巡更任务状态切换
    [Teardown]    关闭浏览器

巡更任务高级搜索
    [Setup]    登录    ${巡更任务}
    巡更任务高级搜索    
    [Teardown]    关闭浏览器

巡更任务查看详情
    [Setup]    登录    ${巡更任务}
    巡更任务查看详情
    [Teardown]    关闭浏览器

巡更任务添加备注
    [Setup]    登录    ${巡更任务}
    巡更任务添加备注	这是备注信息
    [Teardown]    关闭浏览器	
	
巡更任务分配
    [Setup]    登录    ${巡更任务}
    巡更任务分配
    [Teardown]    关闭浏览器
	
巡更问题列表
	[Setup]    登录    ${问题列表}
    巡更问题列表
    [Teardown]    关闭浏览器

巡更问题列状态切换
	[Setup]    登录    ${问题列表}
    巡更问题列状态切换
    [Teardown]    关闭浏览器