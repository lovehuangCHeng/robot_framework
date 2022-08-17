*** Settings ***
Library           Selenium2Library
Variables         ../../../config/elements/系统管理/系统管理Xpath.py    timeout=25
Resource          ../../通用方法.robot

*** Keywords ***
新建权限
    等待element元素可见    ${新建权限按钮}
    sleep    2
    click element    ${新建权限按钮}
    sleep    15
    Input Text    ${权限名称输入框}    RF权限名称
    sleep    0.5
    Input Text    ${权限备注输入框}    RF权限备注
    sleep    0.5
    click element    ${所有数据权限单选框}
    sleep    0.5
    click element    ${保存按钮}
	sleep    0.5

编辑权限
    等待element元素可见    ${编辑权限按钮}
    sleep    0.5
    click element    ${编辑权限按钮}
    sleep    15
    Input Text    ${权限名称输入框}    RF权限名称1
    sleep    0.5
    Input Text    ${权限备注输入框}    RF权限备注1
    sleep    0.5
    click element    ${所属管理区权限单选框}
    sleep    0.5
    click element    ${保存按钮}

搜索权限
    等待element元素可见    ${简单搜索权限输入框}
    sleep    0.5
    Input Text    ${简单搜索权限输入框}    RF权限名称
    sleep    0.5
    click element    ${简单搜索按钮}
	sleep    0.5

删除权限
    搜索权限
    sleep    0.5
    click element    ${删除权限按钮}
    sleep    0.5
    click element    ${确认删除按钮}
	sleep    0.5
