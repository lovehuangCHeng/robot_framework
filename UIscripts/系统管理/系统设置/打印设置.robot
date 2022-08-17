*** Settings ***
Library           Selenium2Library
Variables         ../../../config/geturl.py
Resource          打印设置-resource.robot
Resource          ../../通用方法.robot
Resource          打印设置-resource.robot

*** Test Cases ***
新建打印设置
    登录    ${打印设置}
    进入iframe
    新建打印设置
    [Teardown]    关闭浏览器

编辑打印设置
    登录    ${打印设置}
    进入iframe
    编辑打印设置
    [Teardown]    关闭浏览器

设计打印设置
    登录    ${打印设置}
    进入iframe
    设计打印设置
    [Teardown]    关闭浏览器

删除打印设置
    登录    ${打印设置}
    进入iframe
    删除打印设置
    [Teardown]    关闭浏览器
