*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          公摊仪表抄表-resource.txt
Library           Selenium2Library

*** Test Cases ***
新建公摊仪表
    登录    ${公摊仪表管理}
    进入iframe
    新建公摊仪表
    [Teardown]    关闭浏览器

公摊进度概况
    登录    ${公摊仪表抄表}
    进入iframe
    公摊进度概况
    sleep    1
    [Teardown]    关闭浏览器

公摊明细以及抄表
    登录    ${公摊仪表抄表}
    进入iframe
    公摊抄表进度明细
    sleep    1
    [Teardown]    关闭浏览器

公摊历史记录
    登录    ${公摊仪表抄表}
    进入iframe
    公摊历史记录
    sleep    1
    [Teardown]    关闭浏览器

公摊进度分摊用量
    登录    ${公摊仪表抄表}
    进入iframe
    ${i}    Set Variable    //td[text()='未分摊']
    log    ${i}
    公摊分摊进度明细
    sleep    1
    [Teardown]    关闭浏览器

查看分摊结果
    登录    ${公摊仪表抄表}
    进入iframe
    查看分摊结果数据
    sleep    1
    [Teardown]    关闭浏览器
