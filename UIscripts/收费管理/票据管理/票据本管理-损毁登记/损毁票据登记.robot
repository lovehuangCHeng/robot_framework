*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          损毁票据登记-resource.robot
Library           Selenium2Library

*** Test Cases ***
新增损毁票据
    登录    ${损毁票据登记}
    sleep    1
    新增损毁票据
    [Teardown]    关闭浏览器

新增损毁票据
    登录    ${损毁票据登记}
    sleep    1
    删除损毁票据
    [Teardown]    关闭浏览器
