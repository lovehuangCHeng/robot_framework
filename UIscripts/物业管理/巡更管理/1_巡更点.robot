*** Settings ***
Resource          巡更管理方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建巡更点
	[Setup]    登录    ${巡更点}
    ${testdata}    巡更点变量
	${testno}	数字变量
    新建巡更点    ${testdata}	${testno}
    [Teardown]    关闭浏览器

编辑巡更点
	[Setup]    登录    ${巡更点}
    编辑巡更点   
    [Teardown]    关闭浏览器
	
作废_恢复巡更点
	[Setup]    登录    ${巡更点}
    作废_恢复巡更点    
    [Teardown]    关闭浏览器
	
查看二维码巡更点
	[Setup]    登录    ${巡更点}
    查看二维码巡更点    
    [Teardown]    关闭浏览器
	
删除巡更点
	[Setup]    登录    ${巡更点}
    删除巡更点    ${testdata}
    [Teardown]    关闭浏览器
		