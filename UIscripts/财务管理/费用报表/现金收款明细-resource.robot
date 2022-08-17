*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
现金收款明细_资源树搜索
    等待element元素可见    ${现金收款明细_资源树搜索框}
    sleep    0.5
    input text    ${现金收款明细_资源树搜索框}    123
    sleep    3

现金收款明细_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待element元素可见    ${现金收款明细_指定收费项目}
    sleep    0.5
    click element    ${现金收款明细_指定收费项目}
    sleep    0.5
    click element    ${现金收款明细_选择一个收费项目}
    sleep    0.5
    等待元素可用    ${现金收款明细_收费时段开始日期}
    sleep    0.5
    input text    ${现金收款明细_收费时段开始日期}    2019/01/01 00:00
    sleep    0.5
    等待元素可用    ${现金收款明细_收费时段结束日期}
    sleep    0.5
    input text    ${现金收款明细_收费时段结束日期}    2019/12/31 00:00
    sleep    3

现金收款明细_导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    断言存在    ${现金收款明细_导出}
