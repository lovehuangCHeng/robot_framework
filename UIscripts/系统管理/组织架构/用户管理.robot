*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Resource          用户管理-resource.robot
Variables         ../../../config/geturl.py

*** Test Cases ***
新建用户
    [Setup]    登录    ${用户管理}
    新建用户
    [Teardown]    关闭浏览器

搜索用户
    [Setup]    登录    ${用户管理}
    搜索用户
    [Teardown]    关闭浏览器

编辑用户
    [Setup]    登录    ${用户管理}
    编辑用户
    [Teardown]    关闭浏览器

禁用启用用户
    [Setup]    登录    ${用户管理}
    禁用启用用户
    [Teardown]    关闭浏览器


显示禁用启用用户
    [Setup]    登录    ${用户管理}
    显示禁用启用用户
    [Teardown]    关闭浏览器
	
导入用户模板
    [Setup]    登录    ${用户管理}
    导入用户模板
    [Teardown]    关闭浏览器
	
下载用户导入模板
    [Setup]    登录    ${用户管理}
    下载用户导入模板
    [Teardown]    关闭浏览器


组织机构添加职员
    [Setup]    登录    ${用户管理}
    组织机构添加职员
    [Teardown]    关闭浏览器

组织机构移除职员
    [Setup]    登录    ${用户管理}
    组织机构移除职员
    [Teardown]    关闭浏览器

岗位添加职员
    [Setup]    登录    ${用户管理}
    岗位添加职员
    [Teardown]    关闭浏览器

岗位移除职员
    [Setup]    登录    ${用户管理}
    岗位移除职员
    [Teardown]    关闭浏览器

删除用户
    [Setup]    登录    ${用户管理}
    删除用户
    [Teardown]    关闭浏览器
