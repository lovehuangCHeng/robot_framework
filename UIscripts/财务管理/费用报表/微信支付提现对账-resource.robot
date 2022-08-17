*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
微信支付提现对账_搜索
    等待element元素可见    ${微信支付提现对账_年份}
    sleep    0.5
    click element    ${微信支付提现对账_年份}
    sleep    0.5
    click element    ${微信支付提现对账_选择年份}
    sleep    0.5
    click element    ${微信支付提现对账_月份}
    sleep    0.5
    click element    ${微信支付提现对账_选择月份}
    sleep    0.5
    click element    ${微信支付提现对账_日账单}
    sleep    0.5
    click element    ${微信支付提现对账_月账单}
    sleep    3


