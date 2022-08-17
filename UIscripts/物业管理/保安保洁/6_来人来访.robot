*** Settings ***
Resource          保安管理—resource.txt
Resource          ../../通用方法.robot
Library           Selenium2Library

*** Test Cases ***
新建来人来访
    [Setup]    登录    ${来人来访}
    新建来人来访    
    [Teardown]    关闭浏览器

编辑来人来访
    [Setup]    登录    ${来人来访}
    编辑方法
    [Teardown]    关闭浏览器

搜索来人来访
    [Setup]    登录    ${来人来访}
    高级搜索方法
    [Teardown]    关闭浏览器

查看来人来访
    [Setup]    登录    ${来人来访}
    查看方法
    [Teardown]    关闭浏览器

删除来人来访
    [Setup]    登录    ${来人来访}
    删除方法    张三
    [Teardown]    关闭浏览器
	
新建来人来访2
    [Setup]    登录    ${来人来访}
    新建来人来访    
    [Teardown]    关闭浏览器

导出_批量删除Excel
    [Setup]    登录    ${来人来访}
    导出方法
	批量删除方法
    [Teardown]    关闭浏览器
	


