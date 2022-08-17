*** Settings ***
Resource          保安管理—resource.txt
Resource          ../../通用方法.robot
Library           Selenium2Library

*** Test Cases ***
新建安防事件记录
    [Setup]    登录    ${安防事件记录}
    ${testAFSJ}    安防事件变量
    新建安防事件    ${testAFSJ}
    [Teardown]    关闭浏览器

编辑安防事件记录
    [Setup]    登录    ${安防事件记录}
    编辑方法
    [Teardown]    关闭浏览器

搜索安防事件记录
    [Setup]    登录    ${安防事件记录}
    高级搜索方法
    [Teardown]    关闭浏览器

查看安防事件记录
    [Setup]    登录    ${安防事件记录}
    查看方法
    [Teardown]    关闭浏览器

删除安防事件记录
    [Setup]    登录    ${安防事件记录}
    删除方法    ${testAFSJ}
    [Teardown]    关闭浏览器
	
新建安防事件记录2
    [Setup]    登录    ${安防事件记录}
    新建安防事件    ${testAFSJ}
    [Teardown]    关闭浏览器

导出_批量删除Excel
    [Setup]    登录    ${安防事件记录}
    导出方法
	批量删除方法
    [Teardown]    关闭浏览器
	


