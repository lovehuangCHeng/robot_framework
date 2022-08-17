*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
应收实收预存一览_搜索
    等待element元素可见    ${应收实收预存一览_收费项目}
    sleep    0.5
    click element    ${应收实收预存一览_收费项目}
    sleep    0.5
    click element    ${应收实收预存一览_选择收费项目}
    sleep    0.5
    click element    ${应收实收预存一览_统计截止日期}
    sleep    0.5
    click element    ${应收实收预存一览_选择统计截止日期}
    sleep    0.5
    等待element元素可见    ${应收实收预存一览_表格}
    sleep    2

应收实收预存一览_导出
    等待element元素可见    ${应收实收预存一览_收费项目}
    sleep    0.5
    click element    ${应收实收预存一览_收费项目}
    sleep    0.5
    click element    ${应收实收预存一览_选择收费项目}
    sleep    0.5
    click element    ${应收实收预存一览_统计截止日期}
    sleep    0.5
    click element    ${应收实收预存一览_选择统计截止日期}
    sleep    0.5
    等待element元素可见    ${应收实收预存一览_表格}
    sleep    0.5
    等待元素可用    ${应收实收预存一览_导出}
    sleep    0.5
    click button    ${应收实收预存一览_导出}
    sleep    2
