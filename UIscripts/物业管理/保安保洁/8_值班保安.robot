*** Settings ***
Resource          保安管理—resource.txt
Resource          ../../通用方法.robot
Library           Selenium2Library

*** Test Cases ***
新建值班方案
    [Setup]    登录    ${值班方案}
    ${testZBFA}    值班方案变量
    新建值班方案    ${testZBFA}
    [Teardown]    关闭浏览器

编辑值班方案
    [Setup]    登录    ${值班方案}
    编辑值班方法
    [Teardown]    关闭浏览器

搜索值班方案
    [Setup]    登录    ${值班方案}
    高级搜索方法
    [Teardown]    关闭浏览器

查看值班方案
    [Setup]    登录    ${值班方案}
    查看值班方法
    [Teardown]    关闭浏览器
	
导出Excel值班方案
    [Setup]    登录    ${值班方案}
    导出方法
    [Teardown]    关闭浏览器

删除值班方案
    [Setup]    登录    ${值班方案}
    删除值班方法    ${testZBFA}
    [Teardown]    关闭浏览器
	
新建值班方案2
    [Setup]    登录    ${值班方案}
    新建值班方案    ${testZBFA}
    [Teardown]    关闭浏览器
	
新建保安岗位管理
    [Setup]    登录    ${保安岗位管理}
    ${testBAGW}    保安岗位变量
    新建保安岗位    ${testBAGW}
    [Teardown]    关闭浏览器

编辑保安岗位管理
    [Setup]    登录    ${保安岗位管理}
    编辑保安岗位
    [Teardown]    关闭浏览器

搜索保安岗位管理
    [Setup]    登录    ${保安岗位管理}
    高级搜索方法
    [Teardown]    关闭浏览器

查看保安岗位管理
    [Setup]    登录    ${保安岗位管理}
    查看保安岗位
    [Teardown]    关闭浏览器
	
导出Excel保安管理
    [Setup]    登录    ${保安岗位管理}
    导出方法
    [Teardown]    关闭浏览器
	
搜索保安排班表
    [Setup]    登录    ${保安排班表}
    搜索方法	${testBAGW}
    [Teardown]    关闭浏览器

高级搜索保安排班表
    [Setup]    登录    ${保安排班表}
    高级搜索方法
    [Teardown]    关闭浏览器
	
导出保安排班表
    [Setup]    登录    ${保安排班表}
    导出方法
    [Teardown]    关闭浏览器
	
删除保安岗位管理
    [Setup]    登录    ${保安岗位管理}
    删除方法    ${testBAGW}
    [Teardown]    关闭浏览器
	
删除值班方案2
    [Setup]    登录    ${值班方案}
    删除值班方法    ${testZBFA}
    [Teardown]    关闭浏览器


