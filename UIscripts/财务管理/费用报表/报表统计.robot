*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          报表统计-resource.robot

*** Test Cases ***
报表统计_搜索
    登录    ${报表统计}
    报表统计_搜索
    [Teardown]    关闭浏览器

报表统计_导出
    登录    ${报表统计}
    报表统计_导出
    [Teardown]    关闭浏览器
