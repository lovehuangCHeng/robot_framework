*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          综合报表-resource.robot

*** Test Cases ***
综合报表_资源树筛选
    登录    ${综合报表}
    进入iframe
    综合报表_资源树筛选
    [Teardown]    关闭浏览器

综合报表_汇总_搜索
    登录    ${综合报表}
    进入iframe
    综合报表_汇总_搜索
    [Teardown]    关闭浏览器

综合报表_汇总_导出
    登录    ${综合报表}
    进入iframe
    综合报表_汇总_导出
    [Teardown]    关闭浏览器

综合报表_按年度汇总_搜索
    登录    ${综合报表}
    进入iframe
    综合报表_按年度汇总_搜索
    [Teardown]    关闭浏览器

综合报表_按月度汇总_搜索
    登录    ${综合报表}
    进入iframe
    综合报表_按月度汇总_搜索
    [Teardown]    关闭浏览器

综合报表_按收费项目汇总_搜索
    登录    ${综合报表}
    进入iframe
    综合报表_按收费项目汇总_搜索
    [Teardown]    关闭浏览器

综合报表_清单明细_搜索
    登录    ${综合报表}
    进入iframe
    综合报表_清单明细_搜索
    [Teardown]    关闭浏览器

