*** Settings ***
Library           Selenium2Library    timeout=15
Variables         ../../../config/elements/系统管理/系统管理Xpath.py
Resource          ../../通用方法.robot

*** Keywords ***
新建打印设置
    等待element元素可见    ${新建打印设置按钮}
    sleep    0.5
    click button    ${新建打印设置按钮}
    sleep    1
    等待element元素可见    ${选择管理区下拉框}
    sleep    1
    click element    ${选择管理区下拉框}
    sleep    0.5
    click element    ${选择管理区}
    sleep    0.5
    click element    ${类型下拉框}
    sleep    0.5
    Input Text    ${类型筛选框}    收据
    sleep    0.5
    click element    ${选择类型}
    sleep    0.5
    Input Text    ${总行数输入框}    1
    sleep    0.5
    click element    ${模板下拉框}
    sleep    2
    Input Text    ${模板筛选框}    收据
    sleep    0.5
    click element    ${选择模板}
    sleep    0.5
    click element    ${合并仪表类型勾选框}
    sleep    0.5
    click element    ${合并项目类型打印勾选框}
    sleep    0.5
    click element    ${合并时间段打印勾选框 }
    sleep    0.5
    click element    ${合并资源打印勾选框}
    sleep    0.5
    click element    ${打印设置保存按钮}

编辑打印设置
    sleep    0.5
    click element    ${一条打印设置数据}
    等待元素可用    ${编辑打印设置按钮}
    sleep    0.5
    click button    ${编辑打印设置按钮}
    sleep    3
    等待element元素可见    ${选择管理区下拉框}
    sleep    0.5
    click element    ${选择管理区下拉框}
    sleep    0.5
    click element    ${选择管理区}
    sleep    0.5
    Input Text    ${总行数输入框}    1
    sleep    0.5
    click element    ${模板下拉框}
    sleep    2
    Input Text    ${模板筛选框}    收据
    sleep    0.5
    click element    ${选择模板}
    sleep    0.5
    click element    ${合并仪表类型勾选框}
    sleep    0.5
    click element    ${合并项目类型打印勾选框}
    sleep    0.5
    click element    ${合并时间段打印勾选框 }
    sleep    0.5
    click element    ${合并资源打印勾选框}
    sleep    0.5
    click element    ${打印设置保存按钮}

设计打印设置
    sleep    0.5
    click element    ${一条打印设置数据}
    等待元素可用    ${打印模板设计按钮}
    sleep    0.5
    click button    ${打印模板设计按钮}
    等待元素可用    ${打印模板设计关闭按钮}
    sleep    0.5
    click element    ${打印模板设计关闭按钮}

删除打印设置
    sleep    0.5
    click element    ${一条打印设置数据}
    sleep    0.5
    等待元素可用    ${删除打印模板}
    sleep    0.5
    click button    ${删除打印模板}
    sleep    0.5
    click element    ${确认删除打印模板按钮}
