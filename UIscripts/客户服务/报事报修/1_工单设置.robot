*** Settings ***
Resource          ../../通用方法.robot
Library           Selenium2Library
Resource          报修管理方法-resource.txt

*** Test Cases ***
01_logincookie
    [Setup]    登录保存cookie	${工单设置}
	log   保存cookie
	[Teardown]    关闭浏览器

切换工单设置标签
    [Setup]    登录    ${工单设置}
    切换工单设置标签
    [Teardown]    关闭浏览器

新建工单大类
    [Setup]    登录    ${工单设置}
    ${testGDDL}    工单大类变量
    新建工单大类    ${testGDDL}
    [Teardown]    关闭浏览器

编辑工单大类
    [Setup]    登录    ${工单设置}
    编辑工单大类
    [Teardown]    关闭浏览器

删除工单大类
    [Setup]    登录    ${工单设置}
    删除工单大类    ${testGDDL}
    [Teardown]    关闭浏览器

新建工单子类
    [Setup]    登录    ${工单设置}
    ${testGDZL}    工单子类变量
    新建工单子类    ${testGDZL}
    [Teardown]    关闭浏览器

编辑工单子类
    [Setup]    登录    ${工单设置}
    编辑工单子类
    [Teardown]    关闭浏览器

删除工单子类
    [Setup]    登录    ${工单设置}
    删除工单子类    ${testGDZL}
    [Teardown]    关闭浏览器

新建工单时限
    [Setup]    登录    ${工单设置}
    新建工单时限
    [Teardown]    关闭浏览器

编辑工单时限
    [Setup]    登录    ${工单设置}
    编辑工单时限
    [Teardown]    关闭浏览器

删除工单时限
    [Setup]    登录    ${工单设置}
    删除工单时限
    [Teardown]    关闭浏览器

工单时限导出
    [Setup]    登录    ${工单设置}
    工单时限导出
    [Teardown]    关闭浏览器
