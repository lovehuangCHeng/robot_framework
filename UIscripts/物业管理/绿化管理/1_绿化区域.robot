*** Settings ***
Resource          绿化管理—resource.txt
Resource          ../../通用方法.robot
Library           DateTime
Library           Selenium2Library

*** Test Cases ***
新建并查看绿化区域
    [Setup]    登录    ${绿化区域}
    sleep    2
    : FOR    ${i}    IN RANGE    2
    \    新建并查看绿化区域
    [Teardown]    关闭浏览器

编辑绿化区域
    [Setup]    登录    ${绿化区域}
    sleep    2
    编辑绿化区域
    [Teardown]    关闭浏览器

删除绿化区域
    [Setup]    登录    ${绿化区域}
    sleep    2
    删除绿化区域
    [Teardown]    关闭浏览器
