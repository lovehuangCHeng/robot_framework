*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          综合收费率报表-resource.robot

*** Test Cases ***
综合收费率报表_搜索
    登录    ${综合收费率报表}
    综合收费率报表_搜索
    [Teardown]    关闭浏览器

综合收费率报表_导出
    登录    ${综合收费率报表}
    综合收费率报表_导出
    [Teardown]    关闭浏览器

综合收费率报表_查看本年应收
    登录    ${综合收费率报表}
    综合收费率报表_查看本年应收
    [Teardown]    关闭浏览器
