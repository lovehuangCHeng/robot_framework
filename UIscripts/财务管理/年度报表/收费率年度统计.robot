*** Settings ***
Library           Selenium2Library
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          收费率年度统计-resource.robot

*** Test Cases ***
收费率年度统计_按应收时间段查询
    登录    ${收费率年度统计}
    进入iframe
    收费率年度统计_按应收时间段查询
    [Teardown]    关闭浏览器

收费率年度统计_汇总到楼宇
    登录    ${收费率年度统计}
    进入iframe
    收费率年度统计_汇总到楼宇
    [Teardown]    关闭浏览器

收费率年度统计_汇总到收费项目
    登录    ${收费率年度统计}
    进入iframe
    收费率年度统计_汇总到收费项目
    [Teardown]    关闭浏览器
