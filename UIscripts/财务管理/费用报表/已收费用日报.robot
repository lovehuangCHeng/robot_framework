*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          已收费用日报-resource.robot

*** Test Cases ***
已收费用日报_资源树筛选
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_资源树筛选
    [Teardown]    关闭浏览器

已收费用日报_搜索
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_搜索
    [Teardown]    关闭浏览器

已收费用日报_按收款日期汇总_导出
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_按收款日期汇总_导出
    [Teardown]    关闭浏览器
	
已收费用日报_本期往期汇总_搜索
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_本期往期汇总_搜索
    [Teardown]    关闭浏览器

已收费用日报_本期往期汇总_导出
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_本期往期汇总_导出
    [Teardown]    关闭浏览器

已收费用日报_按收费项目汇总_搜索
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_按收费项目汇总_搜索
    [Teardown]    关闭浏览器

已收费用日报_按收费项目汇总_导出
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_按收费项目汇总_导出
    [Teardown]    关闭浏览器

已收费用日报_收费明细_搜索
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_收费明细_搜索
    [Teardown]    关闭浏览器

已收费用日报_收费明细_导出
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_收费明细_导出
    [Teardown]    关闭浏览器

已收费用日报_票据汇总_搜索
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_票据汇总_搜索
    [Teardown]    关闭浏览器

已收费用日报_票据汇总_导出
    登录    ${已收费用日报}
    进入iframe
    已收费用日报_票据汇总_导出
    [Teardown]    关闭浏览器
