*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/财务管理/收支管理Xpath.py    timeout=25
Resource          ../../通用方法.robot

*** Keywords ***
新建收支科目
    等待element元素可见    ${收支科目新建按钮}
    sleep    2
    click button    ${收支科目新建按钮}
    等待element元素可见    ${新建收支科目名称}
    sleep    0.5
    Input Text    ${新建收支科目名称}    RF收入科目名称001
    sleep    0.5
    click element    ${新建收支科目类型下拉}
    sleep    0.5
    click element    ${选择科目类型收入}
    sleep    0.5
    Input Text    ${新建收支科目备注}    RF收入科目备注
    sleep    0.5
    click button    ${新建收支科目确定}

编辑收支科目
    等待element元素可见    ${收支科目编辑按钮}
    sleep    2
    click element    ${收支科目编辑按钮}
    等待element元素可见    ${新建收支科目名称}
    sleep    0.5
    Input Text    ${新建收支科目名称}    RF收入科目名称002
    sleep    0.5
    Input Text    ${新建收支科目备注}    RF收入科目备注
    sleep    0.5
    click button    ${新建收支科目确定}

简单搜索收支科目
    等待element元素可见    ${收支科目简单搜索输入框}
    sleep    0.5
    Input Text    ${收支科目简单搜索输入框}    RF
    sleep    0.5
    click element    ${收支科目简单搜索按钮}

高级搜索收支科目
    等待element元素可见    ${收支科目高级搜索展开}
    sleep    0.5
    click element    ${收支科目高级搜索展开}
    sleep    0.5
    Input Text    ${科目名称输入框}    RF
    sleep    0.5
    click element    ${科目类型下拉框}
    sleep    0.5
    click element    ${科目类型下拉框选择收入}
    sleep    0.5
    Input Text    ${科目备注输入框}    RF
    sleep    0.5
    click button    ${收支科目高级搜索按钮}

删除收支科目
    等待element元素可见    ${收支科目删除按钮}
    sleep    0.5
    click element    ${收支科目删除按钮}
    sleep    0.5
    click button    ${收支科目删除确认按钮}

批量删除收支科目
    等待element元素可见    ${收支科目编辑按钮}
    sleep    0.5
    click element    ${选择一条收支科目数据}
    sleep    0.5
    click button    ${收支科目批量删除按钮}
    sleep    0.5
    click button    ${收支科目删除确认按钮}
