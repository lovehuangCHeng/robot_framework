*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/收支管理Xpath.py

*** Keywords ***
新建收入登记
    等待element元素可见    ${收入登记新建按钮}
    sleep    2
    click button    ${收入登记新建按钮}
    sleep    2
    click element    ${新建收入登记管理区下拉框}
    sleep    0.5
    click element    ${新建收入登记选择管理区}
    sleep    0.5
    click element    ${新建收入登记科目名称下拉框}
    sleep    0.5
    click element    ${新建收入登记选择科目名称}
    sleep    0.5
    Input Text    ${新建收入登记金额}    3598.98
    sleep    0.5
    click element    ${新建收入登记发生日期选择框}
    sleep    0.5
    click element    ${新建收入登记发生日期选择今天}
    sleep    0.5
    Input Text    ${新建收入登记备注}    收入登记001
    sleep    0.5
    click button    ${新建收入登记确定}

编辑收入登记
    等待element元素可见    ${收入登记编辑按钮}
    sleep    2
    click element    ${收入登记编辑按钮}
    等待element元素可见    ${新建收入登记管理区下拉框}
    sleep    0.5
    click button    ${新建收入登记确定}

简单搜索收入登记
    等待element元素可见    ${收入登记简单搜索输入框}
    sleep    0.5
    Input Text    ${收入登记简单搜索输入框}    RF
    sleep    0.5
    click element    ${收入登记简单搜索按钮}

高级搜索收入登记
    等待element元素可见    ${收入登记高级搜索展开}
    sleep    0.5
    click element    ${收入登记高级搜索展开}
    sleep    0.5
    click element    ${收入登记搜索管理区下拉框}
    sleep    0.5
    click element    ${收入登记搜索选择管理区}
    sleep    0.5
    click element    ${收入科目名称下拉框}
    sleep    0.5
    click element    ${选择收入科目名称}
    sleep    0.5
    Input Text    ${收入科目备注输入框}    RF
    sleep    0.5
    click button    ${收入登记高级搜索按钮}

删除收入登记
    等待element元素可见    ${收入登记删除按钮}
    sleep    0.5
    click element    ${收入登记删除按钮}
    sleep    0.5
    click button    ${收入登记删除确认按钮}

批量删除收入登记
    等待element元素可见    ${收入登记批量删除按钮}
    sleep    0.5
    click element    ${选择一条收入登记数据}
    sleep    0.5
    click button    ${收入登记批量删除按钮}
    sleep    0.5
    click button    ${收入登记删除确认按钮}

新建收入科目
    ${random_SRKM}    Evaluate    random.randint(0,999999999)    random
    等待element元素可见    ${收支科目新建按钮}
    sleep    2
    click button    ${收支科目新建按钮}
    等待element元素可见    ${新建收支科目名称}
    sleep    0.5
    Input Text    ${新建收支科目名称}    ${random_SRKM}
    sleep    0.5
    click element    ${新建收支科目类型下拉}
    sleep    0.5
    click element    ${选择科目类型收入}
    sleep    0.5
    Input Text    ${新建收支科目备注}    RF收入科目备注
    sleep    0.5
    click button    ${新建收支科目确定}
