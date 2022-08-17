*** Settings ***
Library           Selenium2Library
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          收支综合统计-resource.robot

*** Test Cases ***
搜索收支综合统计
    登录    ${收支综合统计}
    搜索收支综合统计
    [Teardown]    关闭浏览器
