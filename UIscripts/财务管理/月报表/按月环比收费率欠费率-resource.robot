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
    click element    ${应收月份日期拉下}
    sleep    1
    等待元素可用    ${选择开始日期}
    sleep    1
    click element    ${选择开始日期}
    sleep    1
    click element    ${选择结束日期}
    sleep    1
    click element    ${收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click button    ${查询按钮}
    等待element元素可见    ${数据断言}
    sleep    3
    click element    ${高级搜索展开}
    sleep    3
    click element    ${展示收费标准}
    sleep    1
    click button    ${查询按钮}
    等待element元素可见    ${收费标准断言}
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
    click element    ${应收月份日期拉下}
    sleep    1
    等待元素可用    ${选择开始日期}
    sleep    1
    click element    ${选择开始日期}
    sleep    1
    click element    ${选择结束日期}
    sleep    1
    click button    ${查询按钮}
    等待element元素可见    ${按月环比明细数据入口}
    sleep    3
    click element    ${按月环比明细数据入口}
    sleep    1
    等待element元素可见    ${按月环比明细断言}
