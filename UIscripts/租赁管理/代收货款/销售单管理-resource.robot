*** Settings ***
Library           Selenium2Library    timeout=20
Resource          ../../通用方法.robot
Variables         ../../../config/elements/租赁管理/代收货款Xpath.py

*** Keywords ***
新建销售单
    等待element元素可见    ${销售单管理_新建按钮}
    sleep    0.5
    click button    ${销售单管理_新建按钮}
    sleep    2
    input text    ${新建销售单_销售单号}    RF_XSDH_002
    sleep    0.5
    click element    ${新建销售单_是否中奖}
    sleep    0.5
    input text    ${新建销售单_顾客姓名}    RF_GKXM_001
    sleep    0.5
    input text    ${新建销售单_联系电话}    123456
    sleep    0.5
    click element    ${新建销售单_展厅号}
    sleep    0.5
    click element    ${新建销售单_选择展厅号}
    sleep    0.5
    click element    ${新建销售单_展厅名称}
    sleep    0.5
    click element    ${新建销售单_选择展厅名称}
    sleep    0.5
    Input Text    ${新建销售单_收款金额}    3598.98
    sleep    0.5
    click element    ${新建销售单_收款方式}
    sleep    0.5
    click element    ${新建销售单_选择收款方式}
    sleep    0.5
    click element    ${新建销售单_收款时间}
    sleep    0.5
    click element    ${新建销售单_收款时间选择此刻}
    sleep    0.5
    Input Text    ${新建销售单_抽奖楼层}    001
    sleep    0.5
    #click element    ${新建销售单_新建抽奖时间段}
    #sleep    0.5
    #Input Text    ${新建销售单_新建抽奖时间段开始时间}    00:00
    #sleep    0.5
    #Input Text    ${新建销售单_新建抽奖时间段结束时间}    00:01
    #sleep    0.5
    #click button    ${新建销售单_新建抽奖时间段确定}
    sleep    0.5
    click element    ${新建销售单_抽奖时间段}
    sleep    0.5
    click element    ${新建销售单_选择抽奖时间段}
    sleep    0.5
    Input Text    ${新建销售单_手续费}    780.98
    sleep    0.5
    Input Text    ${新建销售单_刷卡卡号}    001
    sleep    0.5
    click button    ${新建销售单_确定}

搜索销售单
    等待element元素可见    ${搜索销售单_销售单号}
    sleep    0.5
    input text    ${搜索销售单_销售单号}    RF_XSDH_002
    sleep    0.5
    click element    ${搜索销售单_展厅号}
    sleep    0.5
    click element    ${搜索销售单_选择展厅号}
    sleep    0.5
    click element    ${搜索销售单_收款方式}
    sleep    0.5
    click element    ${搜索销售单_选择收款方式}
    sleep    0.5
    click element    ${搜索销售单_抽奖时间段}
    sleep    0.5
    click element    ${搜索销售单_选择抽奖时间段}
    sleep    0.5
    click element    ${搜索销售单_是否中奖}
    sleep    0.5
    click element    ${搜索销售单_中奖}
    sleep    0.5
    click button    ${搜索销售单_确定按钮}
    sleep    0.5

编辑销售单
    等待element元素可见    ${搜索销售单_销售单号}
    sleep    0.5
    input text    ${搜索销售单_销售单号}    RF_XSDH_002
    sleep    0.5
    click button    ${搜索销售单_确定按钮}
    等待element元素可见    ${销售单管理_编辑按钮}
    sleep    0.5
    click element    ${销售单管理_编辑按钮}
    sleep    2
    input text    ${新建销售单_销售单号}    RF_XSDH_002
    sleep    0.5
    click element    ${新建销售单_是否中奖}
    sleep    0.5
    input text    ${新建销售单_顾客姓名}    RF_GKXM_001
    sleep    0.5
    input text    ${新建销售单_联系电话}    123456
    sleep    0.5
    Input Text    ${新建销售单_收款金额}    3598.98
    sleep    0.5
    click element    ${新建销售单_收款时间}
    sleep    0.5
    click element    ${新建销售单_收款时间选择此刻}
    sleep    0.5
    Input Text    ${新建销售单_抽奖楼层}    001
    sleep    0.5
    Input Text    ${新建销售单_手续费}    780.98
    sleep    0.5
    Input Text    ${新建销售单_刷卡卡号}    001
    sleep    0.5
    click button    ${新建销售单_确定}

简单搜索销售单
    等待element元素可见    ${销售单管理_高级搜索展开}
    sleep    0.5
    click element    ${销售单管理_高级搜索展开}
    sleep    0.5
    input text    ${销售单管理_简单搜索输入框}    RF_XSDH_002
    sleep    0.5
    click element    ${销售单管理_简单搜索按钮}
    sleep    3

删除销售单
    等待element元素可见    ${搜索销售单_销售单号}
    sleep    0.5
    input text    ${搜索销售单_销售单号}    RF_XSDH_002
    sleep    0.5
    click button    ${搜索销售单_确定按钮}
    等待element元素可见    ${销售单管理_删除按钮}
    click element    ${销售单管理_删除按钮}
    sleep    0.5
    click element    ${销售单管理_确认删除按钮}
    sleep    1

导出销售单
    等待element元素可见    ${销售单管理_导出按钮}
    sleep    0.5
    click button    ${销售单管理_导出按钮}
    sleep    1
