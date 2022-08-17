*** Settings ***
Library           Selenium2Library    timeout=30
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          月度收费统计-resource.robot

*** Test Cases ***
按收费项目搜索数据_展示收费标准_导出excel
    [Setup]    登录    ${月度收费统计}
    按收费项目搜索数据_展示收费标准_导出excel
    sleep    3
    [Teardown]    关闭浏览器

明细数据查看
    [Setup]    登录    ${月度收费统计}
    明细数据查看
    sleep    3
    [Teardown]    关闭浏览器
