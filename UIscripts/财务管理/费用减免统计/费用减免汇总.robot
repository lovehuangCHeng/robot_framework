*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          费用减免汇总-resource.robot

*** Test Cases ***
费用减免汇总_资源树筛选
    登录    ${费用减免汇总}
    进入iframe
    费用减免汇总_资源树筛选
    [Teardown]    关闭浏览器

费用减免汇总_按指定收费项目筛选
    登录    ${费用减免汇总}
    进入iframe
    费用减免汇总_按指定收费项目筛选
    [Teardown]    关闭浏览器

费用减免汇总_按减免时段筛选
    登录    ${费用减免汇总}
    进入iframe
    费用减免汇总_按减免时段筛选
    [Teardown]    关闭浏览器

费用减免汇总_查看客户详情
    登录    ${费用减免汇总}
    进入iframe
    费用减免汇总_查看客户详情
    [Teardown]    关闭浏览器

费用减免汇总_查看资源详情
    登录    ${费用减免汇总}
    进入iframe
    费用减免汇总_查看资源详情
    [Teardown]    关闭浏览器
