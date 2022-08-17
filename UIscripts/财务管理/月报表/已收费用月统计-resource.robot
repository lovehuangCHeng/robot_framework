*** Settings ***
Library           Selenium2Library    timeout=15
Resource          ../../通用方法.robot
Variables         ../../../config/elements/财务管理/月报表Xpath.py

*** Keywords ***
已收费用月统计_资源树筛选
    等待element元素可见    ${已收费用月统计_资源树搜索框}
    sleep    0.5
    Input Text    ${已收费用月统计_资源树搜索框}    123
    sleep    5

已收费用月统计_按指定收费项目筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_指定收费项目}
    sleep    0.5
    click element    ${已收费用月统计_选择一个收费项目}
    sleep    2

已收费用月统计_按年度月份筛选
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_选择年份下拉框}
    sleep    0.5
    click element    ${已收费用月统计_选择年份}
    sleep    0.5
    click element    ${已收费用月统计_选择月份}
    sleep    2

已收费用月统计_收费汇总导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click button    ${已收费用月统计_搜索按钮}
    sleep    3
    等待元素可用    ${已收费用月统计_收费汇总导出按钮}
    sleep    0.5
    click button    ${已收费用月统计_收费汇总导出按钮}
    sleep    3

已收费用月统计_票据汇总搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_票据汇总Tab}
    sleep    3

已收费用月统计_票据汇总导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_票据汇总Tab}
    sleep    0.5
    等待元素可用    ${已收费用月统计_票据汇总导出按钮}
    sleep    0.5
    click button    ${已收费用月统计_票据汇总导出按钮}
    sleep    3

已收费用月统计_收费明细搜索
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_收费明细Tab}
    sleep    3

已收费用月统计_收费明细导出
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_收费明细Tab}
    sleep    0.5
    等待元素可用    ${已收费用月统计_收费明细导出按钮}
    sleep    0.5
    click button    ${已收费用月统计_收费明细导出按钮}
    sleep    3

已收费用月统计_查看房间详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_收费明细Tab}
    sleep    0.5
    等待element元素可见    ${已收费用月统计_收费明细查看房间信息}
    sleep    0.5
    click element    ${已收费用月统计_收费明细查看房间信息}
    sleep    2
    断言存在    ${已收费用月统计_房间详情页面验证}

已收费用月统计_查看客户详情
    数据库查询操作    ${guanliquID}
    sleep    0.5
    等待element元素可见    //li[@id='${var[0][0]}']/a
    sleep    0.5
    #选中管理区
    click element    //li[@id='${var[0][0]}']/a
    sleep    0.5
    click element    ${已收费用月统计_收费明细Tab}
    sleep    0.5
    等待element元素可见    ${已收费用月统计_收费明细查看客户信息}
    sleep    0.5
    click element    ${已收费用月统计_收费明细查看客户信息}
    sleep    2
    断言存在    ${已收费用月统计_客户详情页面验证}
