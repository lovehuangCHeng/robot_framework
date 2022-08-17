*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          预存转实收明细-resource.robot

*** Test Cases ***
预存转实收明细_资源树搜索
    登录    ${预存转实收明细}
    进入iframe
    预存转实收明细_资源树搜索
    [Teardown]    关闭浏览器

预存转实收明细_搜索
    登录    ${预存转实收明细}
    进入iframe
    预存转实收明细_搜索
    [Teardown]    关闭浏览器

预存转实收明细_导出
    登录    ${预存转实收明细}
    进入iframe
    预存转实收明细_导出
    [Teardown]    关闭浏览器
