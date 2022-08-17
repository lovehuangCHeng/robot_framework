*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          新建退款—resource.txt
Library           Selenium2Library    timeout=20
Library           BuiltIn

*** Test Cases ***
搜索退款
    登录    ${新建退款 }
    数据查询
    进入iframe
    搜索票据
    [Teardown]    关闭浏览器

新建退款并打印
    登录    ${新建退款 }
    进入iframe
    新建退款并打印
    [Teardown]    关闭浏览器

新建退款并不打印
    登录    ${新建退款 }
    进入iframe
    新建退款并不打印
    [Teardown]    关闭浏览器
