*** Settings ***
Library           Selenium2Library
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          操作日志-resource.robot

*** Test Cases ***
高级搜索操作日志
    登录    ${操作日志}
    高级搜索操作日志
