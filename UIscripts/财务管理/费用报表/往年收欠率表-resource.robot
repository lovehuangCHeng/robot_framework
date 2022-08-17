*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
往年收欠率表_搜索
    等待element元素可见    ${往年收欠率表_截止日期}
    sleep    0.5
    click element    ${往年收欠率表_截止日期}
    sleep    0.5
    click element    ${往年收欠率表_选择开始日期}
    sleep    0.5
    click element    ${往年收欠率表_选择截止日期}
    sleep    0.5
	等待element元素可见    ${往年收欠率表_管理区}
    sleep    0.5
    click element    ${往年收欠率表_管理区}
    sleep    0.5
    搜索输入中的管理区
    sleep    0.5
    click element    ${往年收欠率表_收费项目}
    sleep    0.5
    click element    ${往年收欠率表_选择收费项目}
    sleep    0.5
    click button    ${往年收欠率表_搜索}
    sleep    0.5
    等待element元素可见    ${往年收欠率表_表格}
    sleep    0.5
    等待元素可用    ${往年收欠率表_重置}
    sleep    0.5
    click button    ${往年收欠率表_重置}
    sleep    2

往年收欠率表_导出
    等待element元素可见    ${往年收欠率表_截止日期}
    sleep    0.5
    click element    ${往年收欠率表_截止日期}
    sleep    0.5
    click element    ${往年收欠率表_选择开始日期}
    sleep    0.5
    click element    ${往年收欠率表_选择截止日期}
    sleep    0.5
	等待element元素可见    ${往年收欠率表_管理区}
    sleep    0.5
    click element    ${往年收欠率表_管理区}
    sleep    0.5
    搜索输入中的管理区
    sleep    0.5
    click button    ${往年收欠率表_搜索}
    sleep    0.5
    等待元素可用    ${往年收欠率表_导出}
    sleep    0.5
    click button    ${往年收欠率表_导出}
    sleep    2