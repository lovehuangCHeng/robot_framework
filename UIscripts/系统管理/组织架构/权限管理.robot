*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          权限管理-resource.robot
Resource          ../../通用方法.robot

*** Test Cases ***
新建权限
	[Setup]    登录    ${权限管理}
    新建权限
    [Teardown]    关闭浏览器

编辑权限
    [Setup]    登录    ${权限管理}
    编辑权限
    [Teardown]    关闭浏览器

搜索权限
    [Setup]    登录    ${权限管理}
    搜索权限
    [Teardown]    关闭浏览器

删除权限
    [Setup]    登录    ${权限管理}
    删除权限
    [Teardown]    关闭浏览器
