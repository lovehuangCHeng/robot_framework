*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/收支管理Xpath.py

*** Keywords ***
新建支出登记
    等待element元素可见    ${支出登记新建按钮}
    sleep    2
    click button    ${支出登记新建按钮}
    sleep    2
    click element    ${新建支出登记管理区下拉框}
    sleep    0.5
    click element    ${新建支出登记选择管理区}
    sleep    0.5
    click element    ${新建支出登记科目名称下拉框}
    sleep    0.5
    click element    ${新建支出登记选择科目名称}
    sleep    0.5
    Input Text    ${新建支出登记金额}    3598.98
    sleep    0.5
    click element    ${新建支出登记发生日期选择框}
    sleep    0.5
    click element    ${新建支出登记发生日期选择今天}
    sleep    0.5
    Input Text    ${新建支出登记备注}    支出登记001
    sleep    0.5
    click button    ${新建支出登记确定}

编辑支出登记
    等待element元素可见    ${支出登记编辑按钮}
    sleep    2
    click element    ${支出登记编辑按钮}
    等待element元素可见    ${新建支出登记管理区下拉框}
    sleep    0.5
    click element    ${新建支出登记管理区下拉框}
    sleep    0.5
    click element    ${新建支出登记选择管理区}
    sleep    0.5
    click element    ${新建支出登记科目名称下拉框}
    sleep    0.5
    click element    ${新建支出登记选择科目名称}
    sleep    0.5
    Input Text    ${新建支出登记金额}    3598.98
    sleep    0.5
    click element    ${新建支出登记发生日期选择框}
    sleep    0.5
    click element    ${新建支出登记发生日期选择今天}
    sleep    0.5
    Input Text    ${新建支出登记备注}    支出登记001
    sleep    0.5
    click button    ${新建支出登记确定}

简单搜索支出登记
    等待element元素可见    ${支出登记简单搜索输入框}
    sleep    0.5
    Input Text    ${支出登记简单搜索输入框}    RF
    sleep    0.5
    click element    ${支出登记简单搜索按钮}

高级搜索支出登记
    等待element元素可见    ${支出登记高级搜索展开}
    sleep    0.5
    click element    ${支出登记高级搜索展开}
    sleep    0.5
    click element    ${支出登记搜索管理区下拉框}
    sleep    0.5
    click element    ${支出登记搜索选择管理区}
    sleep    0.5
    click element    ${支出科目名称下拉框}
    sleep    0.5
    click element    ${选择支出科目名称}
    sleep    0.5
    Input Text    ${支出科目备注输入框}    RF
    sleep    0.5
    click button    ${支出登记高级搜索按钮}

删除支出登记
    等待element元素可见    ${支出登记删除按钮}
    sleep    0.5
    click element    ${支出登记删除按钮}
    sleep    0.5
    click button    ${支出登记删除确认按钮}

批量删除支出登记
    等待element元素可见    ${支出登记批量删除按钮}
    sleep    0.5
    click element    ${选择一条支出登记数据}
    sleep    0.5
    click button    ${支出登记批量删除按钮}
    sleep    0.5
    click button    ${支出登记删除确认按钮}

新建支出科目
    ${random_ZCKM}    Evaluate    random.randint(0,999999999)    random
    等待element元素可见    ${收支科目新建按钮}
    sleep    2
    click button    ${收支科目新建按钮}
    等待element元素可见    ${新建收支科目名称}
    sleep    0.5
    Input Text    ${新建收支科目名称}    ${random_ZCKM}
    sleep    0.5
    click element    ${新建收支科目类型下拉}
    sleep    0.5
    click element    ${选择科目类型支出}
    sleep    0.5
    Input Text    ${新建收支科目备注}    RF收入科目备注
    sleep    0.5
    click button    ${新建收支科目确定}
