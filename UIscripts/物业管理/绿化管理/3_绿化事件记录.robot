*** Settings ***
Resource          绿化事件记录—resource.txt
Resource          ../../通用方法.robot
Library           DateTime
Library           Selenium2Library

*** Test Cases ***
新建并查看绿化事件
    [Setup]    登录    ${绿化事件记录}
    sleep    2
    新建绿化事件
    [Teardown]    关闭浏览器

编辑绿化事件
    [Setup]    登录    ${绿化事件记录}
    sleep    2
    编辑绿化事件
    [Teardown]    关闭浏览器

删除绿化事件
    [Setup]    pigx登录    ${绿化事件记录}
    sleep    2
    删除绿化事件
    [Teardown]    关闭浏览器
