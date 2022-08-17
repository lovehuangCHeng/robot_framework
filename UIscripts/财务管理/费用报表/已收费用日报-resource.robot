*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/费用报表Xpath.py

*** Keywords ***
已收费用日报_资源树筛选
    等待element元素可见    ${已收费用日报_资源树搜索框}
    sleep    1
    Input Text    ${已收费用日报_资源树搜索框}    123
    sleep    5

已收费用日报_搜索
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    1
    click element    ${已收费用日报_收费员下拉}
    sleep    1
    click element    ${已收费用日报_选择收费员}
    sleep    1
    click element    ${已收费用日报_收费项目下拉}
    sleep    1
    click element    ${已收费用日报_选择收费项目}
    sleep    1
    click element    ${已收费用日报_房产管理员下拉}
    sleep    1
    click element    ${已收费用日报_选择房产管理员}
    sleep    1
    click element    ${已收费用日报_付款方式下拉}
    sleep    1
    click element    ${已收费用日报_选择付款方式}
    sleep    2

已收费用日报_按收款日期汇总_导出
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    1
    等待元素可用    ${已收费用日报_按收款日期汇总_导出}
    sleep    1
    click button    ${已收费用日报_按收款日期汇总_导出}
    sleep    1

已收费用日报_本期往期汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_本期往期汇总tab}
    sleep    1
    click element    ${已收费用日报_本期往期汇总tab}
    sleep    1
    等待元素可用    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_本月}
    sleep    2

已收费用日报_本期往期汇总_导出
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_本期往期汇总tab}
    sleep    1
    click element    ${已收费用日报_本期往期汇总tab}
    sleep    2
	等待元素可用    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    1
    等待元素可用    ${已收费用日报_按收费项目汇总_导出}
    sleep    1
    click button    ${已收费用日报_按收费项目汇总_导出}
    sleep    1
	
	
已收费用日报_按收费项目汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_按收费项目汇总tab}
    sleep    1
    click element    ${已收费用日报_按收费项目汇总tab}
    sleep    1
    等待元素可用    ${已收费用日报_按收费项目汇总_显示收费标准}
    sleep    1
    click element    ${已收费用日报_按收费项目汇总_显示收费标准}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_本月}
    sleep    2

已收费用日报_按收费项目汇总_导出
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_按收费项目汇总tab}
    sleep    1
    click element    ${已收费用日报_按收费项目汇总tab}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    1
    等待元素可用    ${已收费用日报_收费明细_导出}
    sleep    1
    click button    ${已收费用日报_收费明细_导出}
    sleep    1

已收费用日报_收费明细_搜索
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_收费明细tab}
    sleep    1
    click element    ${已收费用日报_收费明细tab}
    sleep    2
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    2

已收费用日报_收费明细_导出
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_收费明细tab}
    sleep    1
    click element    ${已收费用日报_收费明细tab}
    sleep    2
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    1
    等待元素可用    ${已收费用日报_收费明细_导出}
    sleep    1
    click button    ${已收费用日报_收费明细_导出}
    sleep    2

已收费用日报_票据汇总_搜索
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_票据汇总tab}
    sleep    1
    click element    ${已收费用日报_票据汇总tab}
    sleep    2
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    2

已收费用日报_票据汇总_导出
    数据库查询操作    ${guanliquID}
    sleep    1
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    1
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    1
    等待element元素可见    ${已收费用日报_票据汇总tab}
    sleep    1
    click element    ${已收费用日报_票据汇总tab}
    sleep    1
    click element    ${已收费用日报_收款日期}
    sleep    1
    click element    ${已收费用日报_选择收款日期_今年}
    sleep    1
    等待元素可用    ${已收费用日报_票据汇总_导出}
    sleep    1
    click button    ${已收费用日报_票据汇总_导出}
    sleep    1