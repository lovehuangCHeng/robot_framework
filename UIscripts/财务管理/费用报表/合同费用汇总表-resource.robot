*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
合同费用汇总表_搜索
    等待element元素可见    ${合同费用汇总表_管理区}
    sleep    0.5
    click element    ${合同费用汇总表_管理区}
    sleep    0.5
    click element    ${合同费用汇总表_选择管理区}
    sleep    0.5
    click element    ${合同费用汇总表_时间段}
    sleep    0.5
    click element    ${合同费用汇总表_选择月份}
    sleep    0.5
    click button    ${合同费用汇总表_搜索}
    sleep    0.5
    等待element元素可见    ${合同费用汇总表_表格}
    sleep    0.5
    等待元素可用    ${合同费用汇总表_重置}
    sleep    0.5
    click button    ${合同费用汇总表_重置}
    sleep    2

合同费用汇总表_导出
    等待element元素可见    ${合同费用汇总表_时间段}
    sleep    0.5
    click element    ${合同费用汇总表_时间段}
    sleep    0.5
    click element    ${合同费用汇总表_选择月份}
    sleep    0.5
    click button    ${合同费用汇总表_搜索}
    sleep    0.5
    等待element元素可见    ${合同费用汇总表_导出}
    sleep    0.5
    click button    ${合同费用汇总表_导出}
    sleep    2
