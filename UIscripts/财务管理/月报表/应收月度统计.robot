*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          应收月度统计-resource.robot

*** Test Cases ***
应收月度统计_资源树筛选
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_资源树筛选
    [Teardown]    关闭浏览器

应收月度统计_按年度月份筛选
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_按年度月份筛选
    [Teardown]    关闭浏览器

应收月度统计_查看资源详情
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_查看资源详情
    [Teardown]    关闭浏览器

应收月度统计_查看客户详情
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_查看客户详情
    [Teardown]    关闭浏览器

应收月度统计_按指定收费项目筛选
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_按指定收费项目筛选
    [Teardown]    关闭浏览器

应收月度统计_汇总到楼宇
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_汇总到楼宇
    [Teardown]    关闭浏览器

应收月度统计_汇总到收费项目
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_汇总到收费项目
    [Teardown]    关闭浏览器

应收月度统计_导出统计数据
    登录    ${应收月度统计}
    进入iframe
    应收月度统计_导出统计数据
    [Teardown]    关闭浏览器
