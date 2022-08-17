*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          预存款收支明细-resource.robot

*** Test Cases ***
预存款收支明细_搜索
    登录    ${预存款收支明细}
    进入iframe
    预存款收支明细_搜索
    [Teardown]    关闭浏览器

预存款收支明细_导出
    登录    ${预存款收支明细}
    进入iframe
    预存款收支明细_导出
    [Teardown]    关闭浏览器