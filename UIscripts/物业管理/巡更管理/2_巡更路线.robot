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
	
新建巡更路线
	[Setup]    登录    ${巡更路线}
    ${testluxian}    巡更路线变量
	${testno}	数字变量
    新建巡更路线    ${testluxian}	${testno}
    [Teardown]    关闭浏览器

编辑巡更路线
	[Setup]    登录    ${巡更路线}
    编辑巡更点    
    [Teardown]    关闭浏览器
	
作废_恢复巡更路线
	[Setup]    登录    ${巡更路线}
    作废_恢复巡更点    
    [Teardown]    关闭浏览器
	
查看二维码巡更路线
	[Setup]    登录    ${巡更路线}
    查看二维码巡更点   
    [Teardown]    关闭浏览器
	
删除巡更路线
	[Setup]    登录    ${巡更路线}
    删除巡更点    ${testluxian}
    [Teardown]    关闭浏览器