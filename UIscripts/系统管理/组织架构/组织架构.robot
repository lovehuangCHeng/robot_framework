*** Settings ***
Library           Selenium2Library
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          组织架构-resource.robot

*** Test Cases ***
新建分公司
    [Setup]    登录    ${组织机构}
    新建分公司
    [Teardown]    关闭浏览器

新建部门
    [Setup]    登录    ${组织机构}
    新建部门
    [Teardown]    关闭浏览器

编辑组织架构
    [Setup]    登录    ${组织机构}
    编辑组织架构
    [Teardown]    关闭浏览器

删除部门
    [Setup]    登录    ${组织机构}
    删除部门
    [Teardown]    关闭浏览器
	
删除分公司
    [Setup]    登录    ${组织机构}
    删除分公司
    [Teardown]    关闭浏览器
