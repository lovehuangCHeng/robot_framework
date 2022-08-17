*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          欠费按金额分阶统计-resource.robot

*** Test Cases ***
欠费按金额分阶统计_搜索
    登录    ${欠费按金额分阶统计}
    欠费按金额分阶统计_搜索
    [Teardown]    关闭浏览器

欠费按金额分阶统计_导出
    登录    ${欠费按金额分阶统计}
    欠费按金额分阶统计_导出
    [Teardown]    关闭浏览器
