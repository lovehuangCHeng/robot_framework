*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
微信支付明细_资源树筛选
    等待element元素可见    ${微信支付明细_资源树搜索框}
    sleep    0.5
    Input Text    ${微信支付明细_资源树搜索框}    123
    sleep    5

微信支付明细_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${微信支付明细_收费日期开始}
    sleep    0.5
    input text    ${微信支付明细_收费日期开始}    2019-12-01
    sleep    0.5
    input text    ${微信支付明细_收费日期结束}    2019-12-31
    sleep    0.5
    等待元素可用    ${微信支付明细_收费项目}
    sleep    0.5
    click element    ${微信支付明细_收费项目}
    sleep    0.5
    click element    ${微信支付明细_选择收费项目}
    sleep    3

微信支付明细_导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    断言存在    ${微信支付明细_导出}
