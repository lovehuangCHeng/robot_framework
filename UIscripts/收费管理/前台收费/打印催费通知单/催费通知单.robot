*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          催费通知单—resource.txt
Library           Selenium2Library    timeout=20
Library           BuiltIn

*** Test Cases ***
数据查询
    数据查询

催费通知单打印、导出PDF
    登录    ${打印催费单 }
    进入iframe
    打印、导出催费通知单
    sleep    3
    [Teardown]    关闭浏览器
