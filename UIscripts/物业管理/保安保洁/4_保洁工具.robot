*** Settings ***
Resource          保洁管理—resource.txt
Resource          ../../通用方法.robot
Library           Selenium2Library
*** Test Cases ***
新建保洁工具
    [Setup]    登录    ${保洁工具管理}
	${testBJJG}		保洁工具变量
    新建保洁工具	${testBJJG}
    [Teardown]    关闭浏览器
	
领用保洁工具
    [Setup]    登录    ${保洁工具管理}
    领用工具
    [Teardown]    关闭浏览器
	
归还保洁工具
    [Setup]    登录    ${保洁工具管理}
    归还工具
    [Teardown]    关闭浏览器
	
编辑保洁工具
    [Setup]    登录    ${保洁工具管理}
    保洁工具编辑方法
    [Teardown]    关闭浏览器

搜索保洁工具
    [Setup]    登录    ${保洁工具管理}
    高级搜索保洁区域
    [Teardown]    关闭浏览器
	
查看保洁工具
    [Setup]    登录    ${保洁工具管理}
    保洁工具查看方法
    [Teardown]    关闭浏览器
	
删除保洁工具
    [Setup]    登录    ${保洁工具管理}
    保洁工具删除方法	${testBJJG}
    [Teardown]    关闭浏览器


