*** Settings ***
Library           Selenium2Library    timeout=20
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          返款管理-resource.robot

*** Test Cases ***
新建销售单
    登录    ${销售单管理}
    新建销售单
    [Teardown]    关闭浏览器

新建返款
    登录    ${返款管理}
    新建返款
    [Teardown]    关闭浏览器

搜索返款
    登录    ${返款管理}
    搜索返款
    [Teardown]    关闭浏览器

编辑返款
    登录    ${返款管理}
    编辑返款
    [Teardown]    关闭浏览器

简单搜索返款
    登录    ${返款管理}
    简单搜索返款
    [Teardown]    关闭浏览器

返款
    登录    ${返款管理}
    返款
    [Teardown]    关闭浏览器

导出返款
    登录    ${返款管理}
    导出返款
    [Teardown]    关闭浏览器
