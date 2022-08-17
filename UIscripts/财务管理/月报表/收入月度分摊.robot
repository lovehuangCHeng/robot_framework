*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          收入月度分摊-resource.robot

*** Test Cases ***
收入月度分摊_资源树筛选
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_资源树筛选
    [Teardown]    关闭浏览器

收入月度分摊_按年度月份筛选
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_按年度月份筛选
    [Teardown]    关闭浏览器

收入月度分摊_导出汇总
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_导出汇总
    [Teardown]    关闭浏览器

收入月度分摊_导出明细
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_导出明细
    [Teardown]    关闭浏览器

收入月度分摊_点击金额查看明细
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_点击金额查看明细
    [Teardown]    关闭浏览器

收入月度分摊_查看资源详情
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_查看资源详情
    [Teardown]    关闭浏览器

收入月度分摊_查看客户详情
    登录    ${收入月度分摊}
    进入iframe
    收入月度分摊_查看客户详情
    [Teardown]    关闭浏览器
