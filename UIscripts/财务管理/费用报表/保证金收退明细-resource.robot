*** Settings ***
Library           Selenium2Library    timeout=25
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
保证金收退明细_搜索
    等待element元素可见    ${保证金收退明细_管理区}
    sleep    0.5
    click element    ${保证金收退明细_管理区}
    sleep    0.5
    click element    ${保证金收退明细_选择管理区}
    sleep    0.5
    input text    ${保证金收退明细_合同编号}    1
    sleep    0.5
    input text    ${保证金收退明细_房间车位}    1
    sleep    0.5
    click element    ${保证金收退明细_楼宇停车场}
    sleep    0.5
    click element    ${保证金收退明细_选择楼宇停车场}
    sleep    0.5
    click element    ${保证金收退明细_收款日期}
    sleep    0.5
    click element    ${保证金收退明细_收款日期_开始}
    sleep    0.5
    click element    ${保证金收退明细_收款日期_结束}
    sleep    0.5
    click element    ${保证金收退明细_收费标准}
    sleep    0.5
    click element    ${保证金收退明细_选择收费标准}
    sleep    0.5
    等待元素可用    ${保证金收退明细_搜索}
    sleep    0.5
    click button    ${保证金收退明细_搜索}
    sleep    0.5
    等待元素可用    ${保证金收退明细_重置}
    sleep    0.5
    click button    ${保证金收退明细_重置}
    sleep    2

保证金收退明细_导出
    等待元素可用    ${保证金收退明细_导出}
    sleep    0.5
    click button    ${保证金收退明细_导出}
    sleep    2
