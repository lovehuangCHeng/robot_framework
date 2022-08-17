*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/系统管理/系统管理Xpath.py
Resource          ../../通用方法.robot

*** Keywords ***
新建支付方式
    等待element元素可见    ${添加支付方式}
    sleep    0.5
    click button    ${添加支付方式}
    sleep    0.5
    Input Text    ${支付方式名称 }    RF支付方式
    sleep    0.5
    Input Text    ${支付方式编号}    RF001
    sleep    0.5
    click element    ${使用场景PC}
    sleep    0.5
    Input Text    ${新建支付方式手续费率}    0.02
    sleep    0.5
    Input Text    ${新建支付方式备注}    RF备注
    sleep    0.5
    click button    ${新建支付方式保存}

编辑支付方式
    等待element元素可见    ${编辑支付方式按钮}
    sleep    0.5
    click element    ${编辑支付方式按钮}
    sleep    2
    Input Text    ${新建支付方式备注}    RF备注
    sleep    0.5
    click button    ${编辑支付方式保存按钮}

删除支付方式
    等待element元素可见    ${删除支付方式按钮}
    sleep    0.5
    click element    ${删除支付方式按钮}
    sleep    0.5
    click element    ${删除支付方式确认按钮}
