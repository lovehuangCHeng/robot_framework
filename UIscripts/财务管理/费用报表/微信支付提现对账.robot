*** Settings ***
Library           Selenium2Library    timeout=25
Variables         ../../../config/geturl.py
Resource          ../../通用方法.robot
Resource          微信支付提现对账-resource.robot

*** Test Cases ***
微信支付提现对账_搜索
    登录    ${微信支付提现对账}
    微信支付提现对账_搜索
    [Teardown]    关闭浏览器

