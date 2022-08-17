*** Settings ***
Resource          计划类别管理-resource.txt
Library           Selenium2Library
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot

*** Test Cases ***
新建计划类别
    登录    ${计划类别管理}
    : FOR    ${WDLB}    IN RANGE    2
    \    新建计划类别
    sleep    1
    [Teardown]    关闭浏览器

编辑计划类别
    登录    ${计划类别管理}
    编辑计划类别
    sleep    1
    [Teardown]    关闭浏览器

删除计划类别
    登录    ${计划类别管理}
    删除计划类别
    [Teardown]    关闭浏览器
