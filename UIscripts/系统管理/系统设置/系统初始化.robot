*** Settings ***
Resource          ../../通用方法.robot
Resource          系统初始化-resource.robot
Library           Selenium2Library
Variables         ../../../config/geturl.py

*** Test Cases ***
系统初始化-跳过
    登录    ${系统初始化}
    系统初始化-跳过
    [Teardown]    关闭浏览器
