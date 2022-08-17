*** Settings ***
Resource          绿化工作检查—resource.txt
Resource          ../../通用方法.robot
Library           DateTime
Library           Selenium2Library

*** Test Cases ***
新建并查看绿化工作
    [Setup]    登录    ${绿化检查工作}
    sleep    2
    新建并查看绿化工作
    [Teardown]    关闭浏览器

编辑绿化工作
    [Setup]    登录    ${绿化检查工作}
    sleep    2
    编辑绿化工作
    [Teardown]    关闭浏览器

删除绿化工作
    [Setup]    登录    ${绿化检查工作}
    sleep    2
    删除绿化工作
    [Teardown]    关闭浏览器
