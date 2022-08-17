*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
综合收费率报表_搜索
    等待element元素可见    ${综合收费率报表_截止月份}
    sleep    0.5
    click element    ${综合收费率报表_截止月份}
    sleep    0.5
    click element    ${综合收费率报表_选择截止月份}
    sleep    0.5
    click element    ${综合收费率报表_管理区}
    sleep    0.5
    搜索输入中的管理区
    sleep    0.5
    click element    ${综合收费率报表_收费项目}
    sleep    0.5
    click element    ${综合收费率报表_选择收费项目}
    sleep    0.5
    click button    ${综合收费率报表_搜索}
    sleep    0.5
    等待element元素可见    ${综合收费率报表_表格}
    sleep    0.5
    等待元素可用    ${综合收费率报表_重置}
    sleep    0.5
    click button    ${综合收费率报表_重置}
    sleep    2

综合收费率报表_导出
    等待element元素可见    ${综合收费率报表_管理区}
    sleep    0.5
    click element    ${综合收费率报表_管理区}
    sleep    0.5
    搜索输入中的管理区
    sleep    0.5
    click button    ${综合收费率报表_搜索}
    sleep    0.5
    等待元素可用    ${综合收费率报表_导出}
    sleep    0.5
    click button    ${综合收费率报表_导出}
    sleep    2

综合收费率报表_查看本年应收
    等待element元素可见    ${综合收费率报表_管理区}
    sleep    0.5
    click element    ${综合收费率报表_管理区}
    sleep    0.5
    搜索输入中的管理区
    sleep    0.5
    click button    ${综合收费率报表_搜索}
    sleep    0.5
    等待元素可用    ${综合收费率报表_合计本年应收}
    sleep    0.5
    click element    ${综合收费率报表_合计本年应收}
    sleep    2
    等待element元素可见    ${综合收费率报表_本年应收搜索输入框}
    sleep    0.5
    input text    ${综合收费率报表_本年应收搜索输入框}    1
    sleep    0.5
    click element    ${综合收费率报表_本年应收搜索按钮}
    sleep    0.5
    等待element元素可见    ${综合收费率报表_本年应收表格}
    sleep    0.5
	