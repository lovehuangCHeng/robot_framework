*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          交款申请—resource.txt
Library           Selenium2Library    timeout=20
Library           BuiltIn

*** Test Cases ***
交款
    登录    ${交款申请}
    进入iframe
    交款
    sleep    3
    [Teardown]    关闭浏览器

编辑交款
    登录    ${交款申请}
    进入iframe
    编辑交款
    sleep    3
    [Teardown]    关闭浏览器

查看交款明细
    登录    ${交款申请}
    进入iframe
    查看交款明细
    sleep    3
    [Teardown]    关闭浏览器

审核交款
    登录    ${交款申请}
    进入iframe
    审核交款
    sleep    3
    [Teardown]    关闭浏览器

撤销审核交款
    登录    ${交款申请}
    进入iframe
    撤销审核交款
    sleep    3
    [Teardown]    关闭浏览器

撤销交款扎帐
    登录    ${交款申请}
    进入iframe
    撤销交款扎帐
    sleep    3
    [Teardown]    关闭浏览器


