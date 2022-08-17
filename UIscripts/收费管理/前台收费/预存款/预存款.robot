*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          预存款—resource.txt
Library           Selenium2Library    timeout=20
Library           BuiltIn

*** Test Cases ***
数据查询
    数据查询

预缴
    登录    ${预存款}
    进入iframe
    预缴
    [Teardown]    关闭浏览器

预存款退款
    登录    ${预存款}
    进入iframe
    预存款退款
    [Teardown]    关闭浏览器

预存款冲抵
    登录    ${预存款}
    进入iframe
    预存款冲抵
    [Teardown]    关闭浏览器

查看收支明细
    登录    ${预存款}
    进入iframe
    查看收支明细
    [Teardown]    关闭浏览器

查看核销明细
    登录    ${预存款}
    进入iframe
    查看核销明细
    [Teardown]    关闭浏览器
