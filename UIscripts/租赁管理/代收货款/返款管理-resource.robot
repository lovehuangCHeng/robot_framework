*** Settings ***
Library           Selenium2Library    timeout=20
Resource          ../../通用方法.robot
Variables         ../../../config/elements/租赁管理/代收货款Xpath.py

*** Keywords ***
新建销售单
    ${XSDH}    evaluate    random.randint(10000000,99999999)    random
    等待element元素可见    ${销售单管理_新建按钮}
    sleep    0.5
    click button    ${销售单管理_新建按钮}
    sleep    2
    input text    ${新建销售单_销售单号}    ${XSDH}
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
    ${ZTH}    获取元素文本    ${新建销售单_选择展厅号}
    set suite variable    ${ZTH}
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
    #click element    ${新建销售单_新建抽奖时间段}#回滚
    #sleep    0.5
    #Input Text    ${新建销售单_新建抽奖时间段开始时间}    00:00
    #sleep    0.5
    #Input Text    ${新建销售单_新建抽奖时间段结束时间}    00:01
    #sleep    0.5
    #click button    ${新建销售单_新建抽奖时间段确定}
	sleep    0.5
    Input Text    ${新建销售单_手续费}    780.98
    sleep    0.5
    Input Text    ${新建销售单_刷卡卡号}    001
    sleep    0.5
    click button    ${新建销售单_确定}

新建返款
    等待element元素可见    ${返款管理_新建按钮}
    sleep    0.5
    click button    ${返款管理_新建按钮}
    sleep    2
    click element    ${新建返款_展厅号}
    sleep    0.5
    input text    ${新建返款_输入框}    ${ZTH}
    sleep    0.5
    click element    ${新建返款_销售单收款时间段}
    sleep    0.5
    click element    ${新建返款_销售单收款开始时间}
    sleep    0.5
    click element    ${新建返款_销售单收款结束时间}
    sleep    0.5
    click element    ${新建返款_手续费}
    sleep    0.5
    input text    ${新建返款_手续费}    1
    sleep    0.5
    input text    ${新建返款_押金}    1
    sleep    0.5
    input text    ${新建返款_活动费用}    1
    sleep    0.5
    input text    ${新建返款_立柱费}    1
    sleep    0.5
    input text    ${新建返款_广告制作费}    1
    sleep    0.5
    input text    ${新建返款_活动未达标扣款}    1
    sleep    0.5
    input text    ${新建返款_其他费用}    1
    sleep    0.5
    input text    ${新建返款_应返款金额}    1000
    sleep    0.5
    input text    ${新建返款_抵扣物业费}    1
    sleep    0.5
    input text    ${新建返款_抵扣租金}    1
    sleep    0.5
    input text    ${新建返款_抵扣水费}    1
    sleep    0.5
    input text    ${新建返款_抵扣电费}    1
    sleep    0.5
    input text    ${新建返款_抵扣空调费}    1
    sleep    0.5
    click button    ${新建返款_确定}

搜索返款
    等待element元素可见    ${搜索返款_展厅号}
    sleep    0.5
    click element    ${搜索返款_展厅号}
    sleep    0.5
    click element    ${搜索返款_选择展厅号}
    sleep    0.5
    click element    ${搜索返款_展厅名称}
    sleep    0.5
    click element    ${搜索返款_选择展厅名称}
    sleep    0.5
    click element    ${搜索返款_返款时间}
    sleep    0.5
    click element    ${搜索返款_返款开始时间}
    sleep    0.5
    click element    ${搜索返款_返款结束时间}
    sleep    0.5
    click element    ${搜索返款_返款状态}
    sleep    0.5
    click element    ${搜索返款_选择返款状态}
    sleep    0.5
    click button    ${搜索返款_确定按钮}
    sleep    2

编辑返款
    等待element元素可见    ${搜索返款_返款状态}
    sleep    0.5
    click element    ${搜索返款_返款状态}
    sleep    0.5
    click element    ${搜索返款_选择返款状态}
    sleep    0.5
    click button    ${搜索返款_确定按钮}
    sleep    2
    等待element元素可见    ${返款管理_编辑按钮}
    sleep    0.5
    click element    ${返款管理_编辑按钮}
    sleep    2
    click element    ${新建返款_销售单收款时间段}
    sleep    0.5
    click element    ${新建返款_销售单收款开始时间}
    sleep    0.5
    click element    ${新建返款_销售单收款结束时间}
    sleep    0.5
    input text    ${新建返款_手续费}    1
    sleep    0.5
    input text    ${新建返款_押金}    1
    sleep    0.5
    input text    ${新建返款_活动费用}    1
    sleep    0.5
    input text    ${新建返款_立柱费}    1
    sleep    0.5
    input text    ${新建返款_广告制作费}    1
    sleep    0.5
    input text    ${新建返款_活动未达标扣款}    1
    sleep    0.5
    input text    ${新建返款_其他费用}    1
    sleep    0.5
    input text    ${新建返款_应返款金额}    1000
    sleep    0.5
    input text    ${新建返款_抵扣物业费}    1
    sleep    0.5
    input text    ${新建返款_抵扣租金}    1
    sleep    0.5
    input text    ${新建返款_抵扣水费}    1
    sleep    0.5
    input text    ${新建返款_抵扣电费}    1
    sleep    0.5
    input text    ${新建返款_抵扣空调费}    1
    sleep    0.5
    click button    ${新建返款_确定}

简单搜索返款
    等待element元素可见    ${返款管理_高级搜索展开}
    sleep    0.5
    click element    ${返款管理_高级搜索展开}
    sleep    0.5
    input text    ${返款管理_简单搜索输入框}    1
    sleep    0.5
    click element    ${返款管理_简单搜索按钮}
    sleep    3

返款
    等待element元素可见    ${搜索返款_返款状态}
    sleep    0.5
    click element    ${搜索返款_返款状态}
    sleep    0.5
    click element    ${搜索返款_选择返款状态}
    sleep    0.5
    click button    ${搜索返款_确定按钮}
    sleep    2
    等待element元素可见    ${返款管理_返款按钮}
    sleep    0.5
    click element    ${返款管理_返款按钮}
    sleep    1

导出返款
    等待element元素可见    ${返款管理_导出按钮}
    sleep    0.5
    click button    ${返款管理_导出按钮}
    sleep    1
