*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Resource          图标版权设置-resource.txt
Variables         ../../../config/geturl.py

*** Test Cases ***
图标版权设置
    登录    ${图标版权设置}
    进入iframe
    图标版权设置
    [Teardown]    关闭浏览器
