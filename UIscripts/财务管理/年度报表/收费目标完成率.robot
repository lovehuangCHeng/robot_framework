*** Settings ***
Library           Selenium2Library    timeout=30
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          收费目标完成率-resource.robot

*** Test Cases ***
判断该种收费项目是否已有目标并删除
    [Setup]    登录    ${年度收费目标管理}
    判断该种收费项目是否已有目标并删除
    [Teardown]    关闭浏览器

新建年度收费目标
    [Setup]    登录    ${年度收费目标管理}
    新建年度收费目标
    sleep    3
    [Teardown]    关闭浏览器

按收费项目搜索数据_展示收费标准_导出excel
    [Setup]    登录    ${收费目标完成率}
    按收费项目搜索数据_展示收费标准_导出excel
    sleep    3
    [Teardown]    关闭浏览器
