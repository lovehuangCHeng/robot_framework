*** Settings ***
Resource          保安管理—resource.txt
Resource          ../../通用方法.robot
Library           Selenium2Library

*** Test Cases ***
新建物品出入登记
    [Setup]    登录    ${物品出入登记}
    ${testDJWP}    登记物品变量
    新建物品出入登记    ${testDJWP}
    [Teardown]    关闭浏览器

编辑物品出入登记
    [Setup]    登录    ${物品出入登记}
    编辑方法
    [Teardown]    关闭浏览器

搜索物品出入登记
    [Setup]    登录    ${物品出入登记}
    高级搜索方法
    [Teardown]    关闭浏览器

查看物品出入登记
    [Setup]    登录    ${物品出入登记}
    查看方法
    [Teardown]    关闭浏览器

删除物品出入登记
    [Setup]    登录    ${物品出入登记}
    删除方法    ${testDJWP}
    [Teardown]    关闭浏览器
	
新建物品出入登记2
    [Setup]    登录    ${物品出入登记}
    新建物品出入登记    ${testDJWP}
    [Teardown]    关闭浏览器

出入登记导出_批量删除Excel
    [Setup]    登录    ${物品出入登记}
    导出方法
	批量删除方法
    [Teardown]    关闭浏览器
	
新建安防设施管理
    [Setup]    登录    ${安防设施管理}
    ${testAFSS}    安防设施变量
    新建安防设施管理    ${testAFSS}
    [Teardown]    关闭浏览器

编辑安防设施管理
    [Setup]    登录    ${安防设施管理}
    编辑方法
    [Teardown]    关闭浏览器

搜索安防设施管理
    [Setup]    登录    ${安防设施管理}
    高级搜索方法
    [Teardown]    关闭浏览器

查看安防设施管理
    [Setup]    登录    ${安防设施管理}
    查看方法
    [Teardown]    关闭浏览器

删除安防设施管理
    [Setup]    登录    ${安防设施管理}
    删除方法    ${testAFSS}
    [Teardown]    关闭浏览器
	
新建安防设施管理2
    [Setup]    登录    ${安防设施管理}
    新建安防设施管理    ${testAFSS}
    [Teardown]    关闭浏览器

安防设施导出_批量删除Excel
    [Setup]    登录    ${安防设施管理}
    导出方法
	批量删除方法
    [Teardown]    关闭浏览器
	


