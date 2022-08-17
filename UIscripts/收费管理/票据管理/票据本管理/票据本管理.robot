*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          票据本管理-resource.robot
Library           Selenium2Library

*** Test Cases ***
新建票据本
    登录    ${票据本管理}
    :FOR    ${i}    IN RANGE    2
    \    新增票据本
    [Teardown]    关闭浏览器

新建票据本1
    登录    ${票据本管理}
    新增票据本
    [Teardown]    关闭浏览器

编辑票据本
    登录    ${票据本管理}
    编辑票据本
    [Teardown]    关闭浏览器

标记为已用完
    登录    ${票据本管理}
    标记为已用完
    [Teardown]    关闭浏览器

查看使用明细
    登录    ${票据本管理}
    查看使用明细
    [Teardown]    关闭浏览器

删除票据本
    登录    ${票据本管理}
    删除票据本
    [Teardown]    关闭浏览器
