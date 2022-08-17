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
	
新建保洁记录
    [Setup]    登录    ${保洁记录}
	${testBJJJ}		保洁记录变量
    新建保洁记录	${testBJJJ}
    [Teardown]    关闭浏览器

编辑保洁记录
    [Setup]    登录    ${保洁记录}
    编辑方法
    [Teardown]    关闭浏览器

搜索保洁记录
    [Setup]    登录    ${保洁记录}
    高级搜索保洁区域
    [Teardown]    关闭浏览器
	
查看保洁记录
    [Setup]    登录    ${保洁记录}
    查看方法
    [Teardown]    关闭浏览器
	
删除保洁记录
    [Setup]    登录    ${保洁记录}
    删除方法	testing
    [Teardown]    关闭浏览器
	
删除保洁区域
    [Setup]    登录    ${保洁区域}
    删除方法	${testBJQY}
    [Teardown]    关闭浏览器

