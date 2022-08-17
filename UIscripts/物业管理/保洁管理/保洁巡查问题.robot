*** Settings ***
Resource          ../../通用方法.robot
Resource          保洁管理方法.robot

*** Test Cases ***
保洁问题列表
	[Setup]    登录    ${保洁巡查问题列表}
    保洁问题列表
    [Teardown]    关闭浏览器

保洁问题列状态切换
	[Setup]    登录    ${保洁巡查问题列表}
    保洁问题列状态切换
    [Teardown]    关闭浏览器
