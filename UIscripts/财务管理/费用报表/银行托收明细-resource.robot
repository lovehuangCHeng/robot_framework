*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
银行托收明细_资源树搜索
    等待element元素可见    ${银行托收明细_资源树搜索框}
    sleep    0.5
    input text    ${银行托收明细_资源树搜索框}    123
    sleep    3

银行托收明细_搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    等待元素可用    ${核销时段_开始时间}
    sleep    0.5
    input text    ${核销时段_开始时间}    2019-01-01
    sleep    0.5
    input text    ${核销时段_结束时间}    2019-12-01
    sleep    0.5
	等待元素可用    ${银行托收明细_只显示本月费用}
    sleep    0.5
    click element    ${银行托收明细_只显示本月费用}
    sleep    3

银行托收明细_导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    断言存在    ${银行托收明细_导出}
