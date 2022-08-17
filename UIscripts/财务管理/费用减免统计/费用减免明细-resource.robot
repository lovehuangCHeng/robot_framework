*** Settings ***
Library           Selenium2Library
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用减免统计Xpath.py

*** Keywords ***
费用减免明细_简单搜索
    等待element元素可见    ${费用减免明细_简单搜索输入框}
    sleep    0.5
    input text    ${费用减免明细_简单搜索输入框}    1
    sleep    0.5
    click button    ${费用减免明细_简单搜索按钮}
    sleep    0.5
    等待element元素可见    ${费用减免明细_表格}
    sleep    2

费用减免明细_高级搜索
    等待element元素可见    ${费用减免明细_高级搜索展开按钮}
    sleep    0.5
    click button    ${费用减免明细_高级搜索展开按钮}
    sleep    0.5
    等待element元素可见    ${费用减免明细_高级搜索_管理区下拉}
    sleep    0.5
    click element    ${费用减免明细_高级搜索_管理区下拉}
    sleep    0.5
    click element    ${费用减免明细_高级搜索_选择管理区}
    sleep    0.5
    input text    ${费用减免明细_高级搜索_客户姓名}    1
    sleep    0.5
    click button    ${费用减免明细_高级搜索_按钮}
    sleep    0.5
    等待element元素可见    ${费用减免明细_表格}
    sleep    2

费用减免明细_导出
    等待元素可用    ${费用减免明细_导出}
    sleep    0.5
    click button    ${费用减免明细_导出}
    sleep    2

费用减免明细_查看客户详情
    等待element元素可见    ${费用减免明细_查看客户详情}
    sleep    0.5
    click element    ${费用减免明细_查看客户详情}
    sleep    3
    断言存在    ${费用减免明细_客户详情页面验证}

费用减免明细_查看资源详情
    等待element元素可见    ${费用减免明细_查看资源详情}
    sleep    0.5
    click element    ${费用减免明细_查看资源详情}
    sleep    3
    断言存在    ${费用减免明细_资源详情页面验证}
