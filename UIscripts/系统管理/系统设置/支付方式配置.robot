*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Resource          支付方式配置-resource.robot
Variables         ../../../config/geturl.py

*** Test Cases ***
新建支付方式
    登录    ${支付方式配置}
    新建支付方式
    [Teardown]    关闭浏览器

编辑支付方式
    登录    ${支付方式配置}
    编辑支付方式
    [Teardown]    关闭浏览器

删除支付方式
    登录    ${支付方式配置}
    删除支付方式
    [Teardown]    关闭浏览器
