*** Settings ***
Library           Selenium2Library
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          欠费年度统计-resource.robot

*** Test Cases ***
欠费年度统计_按应收时间段查询
    登录    ${欠费年度统计}
    进入iframe
    欠费年度统计_按应收时间段查询
    [Teardown]    关闭浏览器

欠费年度统计_汇总到楼宇
    登录    ${欠费年度统计}
    进入iframe
    欠费年度统计_汇总到楼宇
    [Teardown]    关闭浏览器

欠费年度统计_汇总到收费项目
    登录    ${欠费年度统计}
    进入iframe
    欠费年度统计_汇总到收费项目
    [Teardown]    关闭浏览器

欠费年度统计_导出年汇总
    登录    ${欠费年度统计}
    进入iframe
    欠费年度统计_导出年汇总
    [Teardown]    关闭浏览器

欠费年度统计_导出年欠费详情
    登录    ${欠费年度统计}
    进入iframe
    欠费年度统计_导出年欠费详情
    [Teardown]    关闭浏览器

欠费年度统计_点击金额跳转
    登录    ${欠费年度统计}
    进入iframe
    欠费年度统计_点击金额跳转
    [Teardown]    关闭浏览器
