*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/月报表Xpath.py

*** Keywords ***
按收费项目搜索数据_展示收费标准_导出excel
    等待元素可用    ${管理区下拉}
    click element    ${管理区下拉}
    搜索输入中的管理区
    sleep    1
    click element    ${欠费原因截止日期}
    sleep    1
    等待元素可用    ${欠费原因截止日期选择}
    sleep    1
    click element    ${欠费原因截止日期选择}
    sleep    1
    click element    ${欠费原因应收日期}
    sleep    1
    等待元素可用    ${欠费原因选择应收开始日期}
    sleep    1
    click element    ${欠费原因选择应收开始日期}
    sleep    1
    click element    ${欠费原因选择应收结束日期}
    sleep    1
    click element    ${收费项目下拉}
    sleep    1
    等待元素可用    ${选择对应的收费项目}
    sleep    1
    click element    ${选择对应的收费项目}
    sleep    1
    click button    ${搜索按钮}
    等待element元素可见    ${数据断言}
    sleep    3

明细数据查看
    等待元素可用    ${管理区下拉}
    click element    ${管理区下拉}
    搜索输入中的管理区
    sleep    1
	click element    ${欠费原因截止日期}
    sleep    1
    等待元素可用    ${欠费原因截止日期选择}
    sleep    1
    click element    ${欠费原因截止日期选择}
    sleep    1
    click element    ${欠费原因应收日期}
    sleep    1
    等待元素可用    ${欠费原因选择应收开始日期}
    sleep    1
    click element    ${欠费原因选择应收开始日期}
    sleep    1
    click element    ${欠费原因选择应收结束日期}
    sleep    1
    click button    ${搜索按钮}
    sleep    3
    等待element元素可见    ${不为零的合计列数据}
    click element    ${不为零的合计列数据}
    sleep    1
    等待element元素可见    ${断言打开明细}
