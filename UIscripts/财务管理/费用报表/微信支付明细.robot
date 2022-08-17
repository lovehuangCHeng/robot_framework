*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          微信支付明细-resource.robot

*** Test Cases ***
微信支付明细_资源树筛选
    登录    ${微信支付明细}
    进入iframe
    微信支付明细_资源树筛选
    [Teardown]    关闭浏览器

微信支付明细_搜索
    登录    ${微信支付明细}
    进入iframe
    微信支付明细_搜索
    [Teardown]    关闭浏览器

微信支付明细_导出
    登录    ${微信支付明细}
    进入iframe
    微信支付明细_导出
    [Teardown]    关闭浏览器