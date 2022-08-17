*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          已收费用月统计-resource.robot

*** Test Cases ***
已收费用月统计_资源树筛选
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_资源树筛选
    [Teardown]    关闭浏览器

已收费用月统计_按指定收费项目筛选
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_按指定收费项目筛选
    [Teardown]    关闭浏览器

已收费用月统计_按年度月份筛选
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_按年度月份筛选
    [Teardown]    关闭浏览器

已收费用月统计_收费汇总导出
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_收费汇总导出
    [Teardown]    关闭浏览器

已收费用月统计_票据汇总搜索
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_票据汇总搜索
    [Teardown]    关闭浏览器

已收费用月统计_票据汇总导出
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_票据汇总导出
    [Teardown]    关闭浏览器

已收费用月统计_收费明细搜索
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_收费明细搜索
    [Teardown]    关闭浏览器

已收费用月统计_收费明细导出
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_收费明细导出
    [Teardown]    关闭浏览器

已收费用月统计_查看房间详情
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_查看房间详情
    [Teardown]    关闭浏览器

已收费用月统计_查看客户详情
    登录    ${已收费用月统计}
    进入iframe
    已收费用月统计_查看客户详情
    [Teardown]    关闭浏览器