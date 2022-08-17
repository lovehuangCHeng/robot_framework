*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/系统管理/系统管理Xpath.py

*** Keywords ***
高级搜索操作日志
    sleep    3
    click element    ${操作模块下拉框}
    sleep    0.5
    click element    ${选择操作模块}
    sleep    0.5
    click element    ${操作类型下拉框}
    sleep    0.5
    click element    ${选择操作类型}
    sleep    0.5
    click element    ${操作人下拉框}
    sleep    0.5
    click element    ${选择操作人}
    sleep    0.5
    click element    ${操作时间选择框}
    sleep    0.5
    click element    ${选择操作时间今天}
    sleep    0.5
    input text    ${操作详情输入框}    编辑
    sleep    0.5
    click button    ${操作日志高级搜索按钮}
    [Teardown]    关闭浏览器
