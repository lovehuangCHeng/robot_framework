*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          住户缴费日期报表-resource.robot

*** Test Cases ***
住户缴费日期报表_搜索
    登录    ${住户缴费日期报表}
    住户缴费日期报表_搜索
    [Teardown]    关闭浏览器

住户缴费日期报表_导出
    登录    ${住户缴费日期报表}
    住户缴费日期报表_导出
    [Teardown]    关闭浏览器
