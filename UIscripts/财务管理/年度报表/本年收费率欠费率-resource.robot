*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/月报表Xpath.py

*** Keywords ***
按收费项目搜索数据_展示收费标准_导出excel
    等待元素可用    ${div管理区下拉}
    sleep    1
    click element    ${div管理区下拉}
    sleep    1
    等待元素可用    ${点击第一个管理区}
    sleep    1
    click element    ${点击第一个管理区}
    sleep    1
    click element    ${截止日期}
    sleep    1
    等待元素可用    ${本年收欠率截止日期}
    sleep    1
    click element    ${本年收欠率截止日期}
    sleep    1
    click element    ${收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click button    ${查询按钮}
    等待element元素可见    ${span数据断言}
    sleep    3
    click element    ${高级搜索展开}
    sleep    1
    click element    ${按收费标准汇总}
    sleep    1
    click button    ${查询按钮}
    等待element元素可见    ${收费标准断言}
    sleep    3
    click element    ${按月汇总}
    sleep    1
    click button    ${查询按钮}
    等待element元素可见    ${应收月份断言}
    sleep    3
    click button    ${导出按钮}

明细数据查看
    等待元素可用    ${div管理区下拉}
    sleep    1
    click element    ${div管理区下拉}
    sleep    1
    等待元素可用    ${点击第一个管理区}
    sleep    1
    click element    ${点击第一个管理区}
    sleep    1
    click element    ${截止日期}
    sleep    1
    等待元素可用    ${本年收欠率截止日期}
    sleep    1
    click element    ${本年收欠率截止日期}
    sleep    1
    click button    ${查询按钮}
    sleep    3
    等待element元素可见    ${本年收欠率截报表选择收费项目}
    click element    ${本年收欠率截报表选择收费项目}
    sleep    1
    等待element元素可见    ${本年收费欠费率明细数据断言}
