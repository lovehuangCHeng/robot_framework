*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
报表统计_搜索
    等待element元素可见    ${报表统计_资源}
    sleep    0.5
    click element    ${报表统计_资源}
    sleep    0.5
    click element    ${报表统计_选择资源}
    sleep    0.5
    click element    ${报表统计_时间段}
    sleep    0.5
    click element    ${报表统计_时间段_开始}
    sleep    0.5
    click element    ${报表统计_时间段_结束}
    sleep    0.5
    click element    ${报表统计_收费项目}
    sleep    0.5
    click element    ${报表统计_选择收费项目}
    sleep    0.5
    click element    ${报表统计_计费方式}
    sleep    0.5
    click element    ${报表统计_选择计费方式}
    sleep    0.5
    click button    ${报表统计_搜索}
    sleep    0.5
    等待element元素可见    ${报表统计_表格}
    sleep    1

报表统计_导出
    等待element元素可见    ${报表统计_资源}
    sleep    0.5
    click element    ${报表统计_资源}
    sleep    0.5
    click element    ${报表统计_选择资源}
    sleep    0.5
    click element    ${报表统计_时间段}
    sleep    0.5
    click element    ${报表统计_时间段_开始}
    sleep    0.5
    click element    ${报表统计_时间段_结束}
    sleep    0.5
    click button    ${报表统计_搜索}
    sleep    0.5
    等待元素可用    ${报表统计_导出}
    sleep    0.5
    click button    ${报表统计_导出}
    sleep    2
