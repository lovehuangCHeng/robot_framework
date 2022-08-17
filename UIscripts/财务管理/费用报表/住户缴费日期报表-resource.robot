*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
住户缴费日期报表_搜索
    等待element元素可见    ${住户缴费日期报表_管理区}
    sleep    0.5
    click element    ${住户缴费日期报表_管理区}
    sleep    0.5
    click element    ${住户缴费日期报表_选择管理区}
    sleep    0.5
    click element    ${住户缴费日期报表_楼宇}
    sleep    0.5
    click element    ${住户缴费日期报表_选择楼宇}
    sleep    0.5
    input text    ${住户缴费日期报表_资源代码}    1
    sleep    0.5
    input text    ${住户缴费日期报表_客户}    1
    sleep    0.5
    click element    ${住户缴费日期报表_收费标准}
    sleep    0.5
    click element    ${住户缴费日期报表_选择收费标准}
    sleep    0.5
    click button    ${住户缴费日期报表_搜索}
    sleep    0.5
    等待element元素可见    ${住户缴费日期报表_表格}
    sleep    0.5
    等待元素可用    ${住户缴费日期报表_重置}
    sleep    0.5
    click button    ${住户缴费日期报表_重置}
    sleep    2

住户缴费日期报表_导出
    等待element元素可见    ${住户缴费日期报表_管理区}
    sleep    0.5
    click element    ${住户缴费日期报表_管理区}
    sleep    0.5
    click element    ${住户缴费日期报表_选择管理区}
    sleep    0.5
    click button    ${住户缴费日期报表_搜索2}
    sleep    0.5
    等待元素可用    ${住户缴费日期报表_导出}
    sleep    0.5
    click button    ${住户缴费日期报表_导出}
    sleep    2
