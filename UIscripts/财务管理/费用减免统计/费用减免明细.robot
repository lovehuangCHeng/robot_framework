*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          费用减免明细-resource.robot

*** Test Cases ***
费用减免明细_简单搜索
    登录    ${费用减免明细}
    进入iframe
    费用减免明细_简单搜索
    [Teardown]    关闭浏览器

费用减免明细_高级搜索
    登录    ${费用减免明细}
    进入iframe
    费用减免明细_高级搜索
    [Teardown]    关闭浏览器

费用减免明细_导出
    登录    ${费用减免明细}
    进入iframe
    费用减免明细_导出
    [Teardown]    关闭浏览器

费用减免明细_查看客户详情
    登录    ${费用减免明细}
    进入iframe
    费用减免明细_查看客户详情
    [Teardown]    关闭浏览器

费用减免明细_查看资源详情
    登录    ${费用减免明细}
    进入iframe
    费用减免明细_查看资源详情
    [Teardown]    关闭浏览器
