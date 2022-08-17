*** Settings ***
Resource          智能排班方法.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建班次设置
    [Setup]    登录    ${排班设置}
    班次设置新建        
    [Teardown]    关闭浏览器
	
编辑班次设置
    [Setup]    登录    ${排班设置}
    班次设置编辑        
    [Teardown]    关闭浏览器

新建日历
    [Setup]    登录    ${排班设置}
    日历新建        
    [Teardown]    关闭浏览器
	
编辑日历
    [Setup]    登录    ${排班设置}
    日历编辑        
    [Teardown]    关闭浏览器

新建周期
    [Setup]    登录    ${排班设置}
    周期新建        
    [Teardown]    关闭浏览器
	
编辑周期
    [Setup]    登录    ${排班设置}
    周期编辑        
    [Teardown]    关闭浏览器
	
新建分组
    [Setup]    登录    ${排班设置}
    排班分组新建        
    [Teardown]    关闭浏览器
	
编辑分组
    [Setup]    登录    ${排班设置}
    排班分组编辑        
    [Teardown]    关闭浏览器
	
查看分组
    [Setup]    登录    ${排班设置}
    排班分组查看        
    [Teardown]    关闭浏览器
	
