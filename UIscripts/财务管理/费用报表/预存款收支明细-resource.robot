*** Settings ***
Library           Selenium2Library    timeout=25
Library           DateTime
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
预存款收支明细_搜索
    等待element元素可见    ${预存款收支明细_开始日期}
    sleep    0.5
    click element    ${预存款收支明细_开始日期}
    sleep    1
    click element    ${预存款收支明细_选择开始日期}
    sleep    0.5
    click element    ${预存款收支明细_结束日期}
    sleep    1
    click element    ${预存款收支明细_选择结束日期}
    sleep    0.5
    click element    ${预存款收支明细_管理区}
    sleep    0.5
    click element    ${预存款收支明细_选择管理区}
    sleep    0.5
    click element    ${预存款收支明细_收费项目下拉}
    sleep    0.5
    click element    ${预存款收支明细_选择收费项目}
    sleep    0.5
    input text     ${预存款收支明细_房间代码}    1
    sleep    0.5
    input text     ${预存款收支明细_客户}    1
    sleep    0.5
    click element    ${预存款收支明细_开始日期}
    sleep    0.5
    click button    ${预存款收支明细_搜索}
    sleep    0.5
    等待element元素可见    ${预存款收支明细_表格}
    sleep    2

预存款收支明细_导出
    等待element元素可见    ${预存款收支明细_开始日期}
    sleep    0.5
    click element    ${预存款收支明细_开始日期}
    sleep    0.5
    click element    ${预存款收支明细_选择开始日期}
    sleep    0.5
    click element    ${预存款收支明细_结束日期}
    sleep    0.5
    click element    ${预存款收支明细_选择结束日期}
    sleep    0.5
    click button    ${预存款收支明细_搜索}
    sleep    0.5
    等待元素可用    ${预存款收支明细_导出}
    sleep    0.5
    click button    ${预存款收支明细_导出}
    sleep    2
