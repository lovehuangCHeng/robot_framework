*** Settings ***
Library           Selenium2Library
Resource          系统参数设置-resource.txt
Resource          ../../通用方法.robot
Variables         ../../../config/geturl.py

*** Test Cases ***
系统参数设置
    登录    ${系统参数设置}
    进入iframe
    系统参数设置
    [Teardown]    关闭浏览器
