*** Settings ***
Variables         ../../../../config/geturl.py
Resource          ../../../通用方法.robot
Resource          自动生成账单-resource.robot
Library           Selenium2Library

*** Test Cases ***
自动生成账单
    登录  ${自动生成账单}
    sleep   1
    进入iframe
    自动生成账单
    [Teardown]    关闭浏览器