*** Settings ***
Resource          保洁管理—resource.txt
Resource          ../../通用方法.robot
Library           Selenium2Library

*** Test Cases ***
新建保洁区域
    [Setup]    登录    ${保洁区域}
	${testBJQY}		保洁区域变量
    新建保洁区域	${testBJQY}
    [Teardown]    关闭浏览器

新建保洁检查
    [Setup]    登录    ${保洁检查}
	${testBJJC}		保洁检查变量
    新建保洁检查	${testBJJC}
    [Teardown]    关闭浏览器

编辑保洁检查
    [Setup]    登录    ${保洁检查}
    编辑方法
    [Teardown]    关闭浏览器

搜索保洁检查
    [Setup]    登录    ${保洁检查}
    高级搜索保洁区域
    [Teardown]    关闭浏览器
	
查看保洁检查
    [Setup]    登录    ${保洁检查}
    查看方法
    [Teardown]    关闭浏览器
	
删除保洁检查
    [Setup]    登录    ${保洁检查}
    删除方法	testing
    [Teardown]    关闭浏览器
	
删除保洁区域
    [Setup]    登录    ${保洁区域}
    删除方法	${testBJQY}
    [Teardown]    关闭浏览器

