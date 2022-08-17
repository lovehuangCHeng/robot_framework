*** Settings ***
Resource          绿化植被登记—resource.txt
Resource          ../../通用方法.robot
Library           DateTime
Library           Selenium2Library

*** Test Cases ***
新建并查看绿化植被
    [Setup]    登录    ${绿化植被登记}
    sleep    2
    新建绿化植被
    [Teardown]    关闭浏览器

编辑绿化植被
    [Setup]    pigx登录    ${绿化植被登记}
    sleep    2
    编辑绿化植被
    [Teardown]    关闭浏览器

删除绿化植被
    [Setup]    pigx登录    ${绿化植被登记}
    sleep    2
    删除绿化植被
    [Teardown]    关闭浏览器
