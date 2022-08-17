*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/收支管理Xpath.py

*** Keywords ***
搜索收支综合统计
    等待element元素可见    ${收支综合统计管理区下拉框}
    sleep    0.5
    click element    ${收支综合统计管理区下拉框}
    sleep    0.5
    click element    ${收支综合统计选择管理区}
    sleep    0.5
    click element    ${收支综合统计发生时间选择框}
    sleep    0.5
    click element    ${收支综合统计发生日期选择今天}
    sleep    0.5
    click button    ${收支综合统计搜索按钮}
