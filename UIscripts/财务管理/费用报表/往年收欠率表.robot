*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          往年收欠率表-resource.robot

*** Test Cases ***
往年收欠率表_搜索
    登录    ${往年收欠率表}
    往年收欠率表_搜索
    [Teardown]    关闭浏览器

往年收欠率表_导出
    登录    ${往年收欠率表}
    往年收欠率表_导出
    [Teardown]    关闭浏览器
