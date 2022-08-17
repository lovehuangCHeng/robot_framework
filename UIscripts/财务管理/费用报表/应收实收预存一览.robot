*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          应收实收预存一览-resource.robot

*** Test Cases ***
应收实收预存一览_搜索
    登录    ${应收实收预存一览}
    进入iframe
    应收实收预存一览_搜索
    [Teardown]    关闭浏览器

应收实收预存一览_导出
    登录    ${应收实收预存一览}
    进入iframe
    应收实收预存一览_导出
    [Teardown]    关闭浏览器
